class Admin < ApplicationRecord
  before_save   :downcase_email

  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_TEACHER = /\A[\w+\.]+cse+@diu\.edu\.bd+\z/i
  VALID_EMAIL_SUPER = /\A[\w+\.]+@daffodilvarsity\.edu\.bd+\z/i
  validates :email, presence: true, length: {maximum: 255},
            format: { with: VALID_EMAIL_TEACHER }, unless: :sup?,
            uniqueness: { case_sensitive: false }
            validates :email, presence: true, length: {maximum: 255},
            format: { with: VALID_EMAIL_SUPER }, if: :sup?,
            uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  
  def sup?
    self.email =~ VALID_EMAIL_SUPER
  end


  private

  def downcase_email
    self.email = email.downcase
  end
end
