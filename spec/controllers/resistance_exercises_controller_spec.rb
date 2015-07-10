require 'rails_helper'

RSpec.describe ResistanceExercisesController, :type => :controller do

  describe "GET get" do
    it "returns http success" do
      get :get
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET post" do
    it "returns http success" do
      get :post
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET put" do
    it "returns http success" do
      get :put
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET delete" do
    it "returns http success" do
      get :delete
      expect(response).to have_http_status(:success)
    end
  end

end
