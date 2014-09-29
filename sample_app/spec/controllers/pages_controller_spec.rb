require 'rails_helper'

RSpec.describe PagesController, :type => :controller do
  render_views

#This before each block is executed before each example on the file
  before(:each) do
    @base_title =" Ruby on Rails"  # @ will make the variabla as instance variable
  end


  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

  #   it "Kushal should have the right title, kushal" do
  #     get :home
  #     response.should have_selector("title",
  #                                    :content => "#{@base_title} | Home")
  # end

  it "should not have empty body" do
    get :home
    response.body.should_not =~/<body>\s*<\/body>/
  end
end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end


  describe "GET about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end
end
