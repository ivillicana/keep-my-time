class Congregation < ApplicationRecord
  has_many :users
  has_many :reports, through: :users
end
