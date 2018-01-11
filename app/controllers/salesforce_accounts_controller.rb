class SalesforceAccountsController < ApplicationController

 include Databasedotcom::Rails::Controller

 def index
 	@accounts = Account.all
 end

 def create
 	@account = Account.create
 end
 
  

end
