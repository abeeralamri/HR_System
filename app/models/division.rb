class Division < ApplicationRecord
    belongs_to :employee, optional: true
    has_many :teams, dependent: :destroy

     # validation
    validates :name, length: {minimum: 2}
    validates :description, length: {minimum: 5}
    validates :manager, length:{minimum: 3} 
end
