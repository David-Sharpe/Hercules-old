require 'rails_helper'

RSpec.describe "resistance_exercises/index", :type => :view do
  before(:each) do
    assign(:resistance_exercises, [
      ResistanceExercise.create!(
        :name => "Name",
        :resistance => "9.99",
        :repetitions => 1,
        :sets => 2
      ),
      ResistanceExercise.create!(
        :name => "Name",
        :resistance => "9.99",
        :repetitions => 1,
        :sets => 2
      )
    ])
  end

  it "renders a list of resistance_exercises" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
