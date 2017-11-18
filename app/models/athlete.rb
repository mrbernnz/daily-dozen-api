class Athlete < ApplicationRecord
  # include ActiveModel::ForbidenAttributesProtection
  include ActiveModel::SecurePassword
  has_secure_password

  has_many :workouts

  accepts_nested_attributes_for :workouts, allow_destroy: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :first_name, :last_name, presence: true
  validates :email, presence: true,
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true

    def sign_in(password)
      if authenticate(password)
        generate_token unless signed_in?
        save!
        return true
      end
      false
    end

    def sign_out
      if signed_in?
        erase_token
        save!
      else
        false
      end
    end

    def signed_in?
      not token.nil?
    end

  private
    def generate_token
      self.token = SecureRandom.urlsafe_base64(16)
    end

    def erase_token
      self.token = nil
    end
end
