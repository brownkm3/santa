require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do

  describe "GET town" do
    it "returns http success" do
      get :town
      expect(response).to have_http_status(:success)
    end
    it "returns the Town page" do 
      get :town
      expect(response).to contain("Town")
      #expect(response.body).to match(/Town/im)
      #parsed_body = JSON.parse(response.body)
      puts response 
    end
  end

  describe "GET help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
  end

end
