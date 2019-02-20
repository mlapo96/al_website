class ProfileController < ApplicationController
	def index
		require 'net/http'
		require 'uri'
		require 'httparty'
		require 'json'

		url = "https://public-api.tracker.gg/apex/v1/standard/profile/5/"
		url += params[:user]

		response = HTTParty.get(url,
			headers: {
				'TRN-Api-Key' => "0534a048-8000-4b48-a22f-71771ad0fc66"
			}, 
			:verify => false
		)

		@name = params[:user]
		@main_legend = response['data']['children'][0]['metadata']['legend_name']
		@level = response['data']['stats'][0]['displayValue']
		@bgimage = response['data']['children'][0]['metadata']['bgimage']
		@kills = response['data']['children'][0]['stats'][0]['displayValue']

		#puts params[:user]
	end
end
