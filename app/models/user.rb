class User < ApplicationRecord
  has_secure_password

  attr_accessor :current_password

  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 30 }

  scope :with_password, -> { where.not(password_digest: nil) }

  def update_with_password(params)
    authenticated = authenticate(params[:current_password])
    assign_attributes(params)
    if valid? && authenticated
      save
      true
    else
      errors.add(:current_password, "Le mot de passe actuel ne correspond pas") unless authenticated
      false
    end
  end

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

end
