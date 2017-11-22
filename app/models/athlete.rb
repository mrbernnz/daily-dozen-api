class Athlete < ApplicationRecord
  include ActiveModel::SecurePassword
  has_secure_password

  has_many :workouts

  accepts_nested_attributes_for :workouts, allow_destroy: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_presence_of :first_name, :last_name, :email, :password_digest
  validates :email, format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

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
