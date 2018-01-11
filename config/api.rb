require 'rubygems'
require 'httparty'

class Accounts
	include HTTParty

	base_uri 'https://na78.salesforce.com/'

	def posts
		self.class.get '/services/data/v41.0/sobjects/Account'
	end
end

accounts = Accounts.new
puts accounts.posts