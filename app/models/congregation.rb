class Congregation < ApplicationRecord
  has_many :users
  has_many :reports, through: :users

  def name_with_city_state
    "#{self.name} - #{self.city}, #{self.state}"
  end
end
