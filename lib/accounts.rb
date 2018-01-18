require 'rubygems'
require 'httparty'





class Account
  include HTTParty
  #doesn't seem to pick up env variable correctly if I set it here
  #headers 'Authorization' => "OAuth #{ENV['sfdc_token']}"
  format :json
  #debug_output $stderr

  def header
    self.set_headers( 'Authorization' => "OAuth #{ENV['sfdc_token']}")
  end

  def root_url
    self.root_url(@root_url = ENV['sfdc_instance_url']+"/services/data/v"+ENV['sfdc_api_version'])
  end

  def self.create()
    @client.set_headers
    headers 'Content-Type' => 'application/json'
    
    options = {
      :body => {
          :"Name" => "testing",
          :"AccountNumber" => "1234"
      }.to_json
    }
    response = post(@client.root_url+"/sobjects/Account/", options)
    # puts response.body, response.code, response.message
end
  
 
end






