require 'spec_helper'

describe Controllers::WorkoutTemplatesController do
  context '#index' do
    it do 
      get :index
    end
    
  end
end
