class Team < ApplicationRecord
    has_many :employees, dependent: :nullify
    has_many :targets, dependent: :destroy
    has_one :division

    # validation
    validates :name, length: {minimum: 3}
    validates :description, length: {minimum: 5}
    
end
