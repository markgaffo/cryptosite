class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :profile
  has_many :balances
  has_many :cryptos
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def username
    return self.email.split('@')[0].capitalize
  end
  
end
