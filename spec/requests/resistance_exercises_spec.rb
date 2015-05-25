require 'rails_helper'

RSpec.describe "ResistanceExercises", :type => :request do
  describe "GET /resistance_exercises" do
    it "works! (now write some real specs)" do
      get resistance_exercises_path
      expect(response).to have_http_status(200)
    end
  end
end
