require 'rails_helper'

RSpec.describe "resistance_exercises/show", :type => :view do
  before(:each) do
    @resistance_exercise = assign(:resistance_exercise, ResistanceExercise.create!(
      :name => "Name",
      :resistance => "9.99",
      :repetitions => 1,
      :sets => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
