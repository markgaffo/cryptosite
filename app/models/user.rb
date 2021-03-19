class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :profile, dependent: :destroy
  has_many :balances
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def username
    return self.email.split('@')[0].capitalize
  end
  
end
