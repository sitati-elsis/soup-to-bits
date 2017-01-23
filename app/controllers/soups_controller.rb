class SoupsController < ApplicationController

	before_action :fetch_soup, :only[:show,:edit, :update,:destroy]

	def show

		respond_to do |format| 
			format.html
			format.json {render json: @soup}
		end
	end

	private
	def fetch_soup
		@soup = Soup.find(params[:id])
	end
end
