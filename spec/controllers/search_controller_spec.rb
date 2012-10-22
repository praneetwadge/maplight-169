require 'spec_helper'

describe SearchController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "simple search" do
    before :each do
      @fake_donor = stub('double').as_null_object
      @fake_recipient = stub('double').as_null_object 
      @fake_contribution = [mock('recipient1'), mock('recipient2')]
    end

    it 'should call the model method that returns the results of just a donor' do
      Contribution.should_receive(:find_all_by_donor).with('Jeanne Buell').and_return(@fake_contribution)
      get :results, {:donor => 'Jeanne Buell', :recipient => 'Nancy Pelosi'}
      #response.should render_template 'results'
    end
   
    it 'should call the model method that returns the results of just a recipient' do
      Contribution.should_receive(:find_all_by_recipient).with('Nancy Pelosi').and_return(@fake_contribution)
      get :results, {:donor => 'Jeanne Buell', :recipient => 'Nancy Pelosi'}
     # response.should render_template 'results'      
    end
    
    it 'should call the model method that returns the results of both a donor and recipient' do
      Contribution.should_receive(:find).with('Jeanne Buell', 'Nancy Pelosi').and_return(@fake_contribution)
      get :results, {:donor => 'Jeanne Buell', :recipient => 'Nancy Pelosi'}
      #response.should render_template 'results'
    end 
  
    it 'should go back to the search page if no results found' do
      no_result = double('contribution').as_null_object
      Contribution.stub(:find).and_return(no_result)
      get :results, {:donor => 'Jeanne Buell', :recipient => 'Nancy Pelosi'}
      response.should redirect_to(search_path)
    end   
  end   

end
