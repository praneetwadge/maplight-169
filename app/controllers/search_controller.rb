class SearchController < ApplicationController
  def all
		@contributions = Contribution.find(:all)
  end
	def index
	end
end
