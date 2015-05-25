require 'rails_helper'

RSpec.describe "resistance_exercises/edit", :type => :view do
  before(:each) do
    @resistance_exercise = assign(:resistance_exercise, ResistanceExercise.create!(
      :name => "MyString",
      :resistance => "9.99",
      :repetitions => 1,
      :sets => 1
    ))
  end

  it "renders the edit resistance_exercise form" do
    render

    assert_select "form[action=?][method=?]", resistance_exercise_path(@resistance_exercise), "post" do

      assert_select "input#resistance_exercise_name[name=?]", "resistance_exercise[name]"

      assert_select "input#resistance_exercise_resistance[name=?]", "resistance_exercise[resistance]"

      assert_select "input#resistance_exercise_repetitions[name=?]", "resistance_exercise[repetitions]"

      assert_select "input#resistance_exercise_sets[name=?]", "resistance_exercise[sets]"
    end
  end
end
