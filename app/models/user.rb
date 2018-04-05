class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #has_many :user_homeworks
  #has_many :homeworks, through: :user_homeworks
  has_and_belongs_to_many :homeworks
end
