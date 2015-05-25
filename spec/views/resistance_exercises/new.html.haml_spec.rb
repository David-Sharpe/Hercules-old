require 'rails_helper'

RSpec.describe "resistance_exercises/new", :type => :view do
  before(:each) do
    assign(:resistance_exercise, ResistanceExercise.new(
      :name => "MyString",
      :resistance => "9.99",
      :repetitions => 1,
      :sets => 1
    ))
  end

  it "renders new resistance_exercise form" do
    render

    assert_select "form[action=?][method=?]", resistance_exercises_path, "post" do

      assert_select "input#resistance_exercise_name[name=?]", "resistance_exercise[name]"

      assert_select "input#resistance_exercise_resistance[name=?]", "resistance_exercise[resistance]"

      assert_select "input#resistance_exercise_repetitions[name=?]", "resistance_exercise[repetitions]"

      assert_select "input#resistance_exercise_sets[name=?]", "resistance_exercise[sets]"
    end
  end
end
