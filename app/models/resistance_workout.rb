class ResistanceWorkout < ApplicationRecord
  belongs_to :user
  has_many :exercises
  
  def belongs_to?(user_id)
    @user.id = user_id
  end
end
