require 'rails_helper'

RSpec.describe PagesController, :type => :controller do
  render_views


  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

  #   it "Kushal should have the right title, kushal" do
  #     get :home
  #     response.should have_selector("title",
  #                   :content => "Ruby On Rails Tutorial Sample App | Home")
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
