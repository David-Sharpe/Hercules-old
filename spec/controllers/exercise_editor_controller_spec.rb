require 'rails_helper'

RSpec.describe ExerciseEditorController, :type => :controller do

  describe "GET resistance" do
    it "returns http success" do
      get :resistance
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET interval" do
    it "returns http success" do
      get :interval
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET endurance" do
    it "returns http success" do
      get :endurance
      expect(response).to have_http_status(:success)
    end
  end

end
