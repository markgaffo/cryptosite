class Profile < ApplicationRecord
    belongs_to :user
    has_many :balances
    
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :country, presence: true
    validates :number, presence: true
    validates :user_id, presence: true
end
