class SearchController < ApplicationController
	def index
	end
  def results
		if params[:query] == 'all'
			@contributions = Contribution.find(:all)
	  else
			@contributions = Contribution.find(1)
		end
  end
	
end
