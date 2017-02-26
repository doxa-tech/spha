class User < ApplicationRecord
  has_secure_password

  scope :with_password, -> { where.not(password_digest: nil) }
end
