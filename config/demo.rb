require 'rubygems'
require 'oauth2'
require 'json'



def oauth2_client

    OAuth2::Client.new(

      ENV['CLIENT_ID'],

      ENV['CLIENT_SECRET'],

      :site => ENV['LOGIN_SERVER'],

      :authorize_url =>'/services/oauth2/authorize',


      :raise_errors => false
      )
  end

  # Subclass OAuth2::AccessToken so we can do auto-refresh

	class ForceToken < OAuth2::AccessToken

	  def request(verb, path, opts={}, &block)

	    response = super(verb, path, opts, &block)

	    if response.status == 401 && refresh_token

	      puts "Refreshing access token"


	      response = super(verb, path, opts, &block)


	    response



	 

	# Filter for all paths except /oauth/callback

	before do



	  token         = session['access_token']

	  refresh       = session['refresh_token']

	  @instance_url = session['instance_url']

	   

	  if token

	    @access_token = ForceToken.from_hash(oauth2_client, { :access_token => token, :refresh_token =>  refresh, :header_format => 'OAuth %s' } )

	  else

	    redirect oauth2_client.auth_code.authorize_url(:redirect_uri => "https://#{request.host}/oauth/callback")

	  end 

	end

	 

	after do

	  # Token may have refreshed!

	  if @access_token && session['access_token'] != @access_token.token

	    puts "Putting refreshed access token in session"

	    session['access_token'] = @access_token.token

	  end

	end

get '/' do

	  # Field list isn't very volatile - stash it in the session

	  if !session['field_list']

	    session['field_list'] = @access_token.get("#{@instance_url}/services/data/v41.0/sobjects/Account/describe/").parsed

	  end

	   

	  @field_list = session['field_list']

	   

	  if params[:value]

	    query = "SELECT Name, Id FROM Account WHERE #{params[:field]} LIKE '#{params[:value]}%' ORDER BY Name LIMIT 20"

	  else

	    query = "SELECT Name, Id from Account ORDER BY Name LIMIT 20"

	  end

	   

	  @accounts = @access_token.get("#{@instance_url}/services/data/v41.0/query/?q=#{CGI::escape(query)}").parsed


	  erb :index

	end


	get '/detail' do

	  @account = @access_token.get("#{@instance_url}/services/data/v41.0/sobjects/Account/#{params[:id]}").parsed

	   

	  erb :detail

	end

	 

	post '/action' do

	  if params[:new]

	    @action_name = 'create'

	    @action_value = 'Create'

	     

	    @account = Hash.new

	    @account['Id'] = ''

	    @account['Name'] = ''

	    @account['Industry'] = ''

	    @account['TickerSymbol'] = ''

	 


	  elsif params[:edit]

	    @account = @access_token.get("#{@instance_url}/services/data/v41.0/sobjects/Account/#{params[:id]}").parsed

	    @action_name = 'update'

	    @action_value = 'Update'

	 

	    done = :edit

	  elsif params[:delete]

	    @access_token.delete("#{@instance_url}/services/data/v41.0/sobjects/Account/#{params[:id]}")

	    @action_value = 'Deleted'

	     

	    @result = Hash.new

	    @result['id'] = params[:id]

	 

	    done = :done

	  end 

	   

	  erb done

	end

	 

	post '/account' do

	  if params[:create]

	    body = {"Name"   => params[:Name],

	      "Industry"     => params[:Industry],

	      "TickerSymbol" => params[:TickerSymbol]}.to_json


	    @result = @access_token.post("#{@instance_url}/services/data/v41.0/sobjects/Account/",

	      {:body => body,

	       :headers => {'Content-type' => 'application/json'}}).parsed

	    @action_value = 'Created'

	  elsif params[:update]

	    body = {"Name"   => params[:Name],

	      "Industry"     => params[:Industry],

	      "TickerSymbol" => params[:TickerSymbol]}.to_json

	 

	    # No response for an update

	    @access_token.post("#{@instance_url}/services/data/v41.0/sobjects/Account/#{params[:id]}?_HttpMethod=PATCH",

	      {:body => body,

	       :headers => {'Content-type' => 'application/json'}})

	    @action_value = 'Updated'

	     

	    @result = Hash.new

	    @result['id'] = params[:id]

	  end 

	   

