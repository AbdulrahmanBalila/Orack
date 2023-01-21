class Booking < ApplicationRecord
  # expermental booking model WIP*
  belongs_to :car
  # the create portion of this model was ganna be in the home/details page,
  # so I wanted to validate based on the @car params given
  validates :start_time, comparison: { less_than: :end_time }
  # custom validate 
  validate :start_time_cant_be_in_the_past
           
  def start_time_cant_be_in_the_past
    if start_time.present? && start_time < Date.today
      errors.add(:start_time, "can't be in the past")
    end
  end
end
