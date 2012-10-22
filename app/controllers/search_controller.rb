class SearchController < ApplicationController

  def index
  end

  def results
    donor = params[:donor]
    recipient = params[:recipient]

    if donor != '' and recipient != ''
      @contributions = Contribution.find(:all, :conditions => ["donor LIKE ? and recipient LIKE ?" , '%'+donor+'%', '%'+recipient+'%'])
    elsif donor != '' 
      # only donor filled in 
      @donor = donor
      @contributions = Contribution.find(:all, :conditions => ['donor LIKE ?', '%'+donor+'%'])
    elsif recipient != ''
      # only recipient filled in 
      @recipient = recipient
      @contributions = Contribution.find(:all, :conditions => ['recipient LIKE ?', '%'+recipient+'%'])
    else
      # nothing filled in, show all contributions
      @contributions = Contribution.all
    end
  end

end
