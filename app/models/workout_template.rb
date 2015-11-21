class WorkoutTemplate < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :period
end
