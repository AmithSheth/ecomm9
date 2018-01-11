require 'rubygems'
require 'httparty'

class Account
	include HTTParty

	format :json

	def self.set_header
		headers 'Authorization' => "OAuth #{ENV['sfdc_token']}"
	end

	def self.root_url
		@root_url = ENV["sfdc_instance_url"]+"/services/data/v41.0"+ENV["sfdc_api_version"]
	end

	def self.create
		Accounts.set_headers

		headers "Content_Type" => "application/json"

		options = {
			:body => {
				:Name => "test",
				:AccountNumber => "1234"

			}.to_json
		}

		response = post(Accounts.root_url+"sobjects/Account", options)
	end
end





