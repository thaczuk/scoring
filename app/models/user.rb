class User < ActiveRecord::Base
  has_many  :competitions

  has_secure_password validations: false

  validates :username,
    presence: true,
    uniqueness: true

  validates :password,
    presence: true,
    length: {minimum: 3},
    on: :create

  def admin?
    self.role == 'admin'
  end
end