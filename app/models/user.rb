class User < ApplicationRecord
  belongs_to :congregation
  has_many :reports
end
