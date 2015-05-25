require "rails_helper"

RSpec.describe ResistanceExercisesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/resistance_exercises").to route_to("resistance_exercises#index")
    end

    it "routes to #new" do
      expect(:get => "/resistance_exercises/new").to route_to("resistance_exercises#new")
    end

    it "routes to #show" do
      expect(:get => "/resistance_exercises/1").to route_to("resistance_exercises#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/resistance_exercises/1/edit").to route_to("resistance_exercises#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/resistance_exercises").to route_to("resistance_exercises#create")
    end

    it "routes to #update" do
      expect(:put => "/resistance_exercises/1").to route_to("resistance_exercises#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/resistance_exercises/1").to route_to("resistance_exercises#destroy", :id => "1")
    end

  end
end
