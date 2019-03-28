class User < ApplicationRecord
  belongs_to :congregation, optional: true
  has_many :reports

  has_secure_password
end
