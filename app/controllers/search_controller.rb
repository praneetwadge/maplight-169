class SearchController < ApplicationController

  def index
  end

  def results
    donor = params[:donor]
    recipient = params[:recipient]

    if donor and recipient 
      @contributions = Contribution.find(:all, :conditions => { :from => donor, :to => recipient })
    elsif donor 
      # only donor filled in 
      @contributions = Contribution.find(:all, :conditions => { :from => donor })
    elsif recipient 
      # only recipient filled in 
      @contributions = Contribution.find(:all, :conditions => { :to => recipient })
    else
      # nothing filled in, show all contributions
      @contributions = Contribution.all
    end
  end

end
