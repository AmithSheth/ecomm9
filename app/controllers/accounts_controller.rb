

class AccountsController < ApplicationController
  before_action :authenticate
  before_action :initialize_client
  

  def index
    @accounts = @client.query("select Id, Name,AccountNumber from Account")
  end

  def create
   @account = @client.create( "Account", Name: "api-test", AccountNumber: "0000") 
  end


 





  private

  def authenticate
    redirect_to connections_path if session['token'].blank?
  end

  def initialize_client
    @client = Restforce.new(
      oauth_token: session['token'],
      refresh_token: session['refresh_token'],
      instance_url: session['instance_url'],
      client_id: $salesforce_config['client_key'],
      client_secret: $salesforce_config['client_secret'],
      api_version: '41.0'
    )
end
end