class Crypto < ApplicationRecord
    belongs_to :user, dependent: :destroy
end
