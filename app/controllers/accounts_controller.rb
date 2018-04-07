class AccountsController < ApplicationController
  
  before_action :initialize_client
  

  def index
  @accounts = @client.query("select Id, Name,AccountNumber,BillingStreet, BillingState, BillingCity, BillingCountry, BillingPostalCode

  from Account")
    
  end

 

 





  private

  

  def initialize_client
      @client = Restforce.new(
      security_token: 'VB9eReYSM0j1Lbom0uWDBCN9',
      oauth_token: session['token'],
      refresh_token: session['refresh_token'],
      instance_url: session['instance_url'],
      client_id: $salesforce_config['client_key'],
      client_secret: $salesforce_config['client_secret'],
      api_version: '41.0'
    )
    end
  end