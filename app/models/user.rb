class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_uniqueness_of :username

  validates :email, presence: true, uniqueness: true
  validates :firstname, presence: true, length: { minimum: 5}
  validates :lastname, presence: true, length: { minimum: 5}
  validates :password, presence: true
end
