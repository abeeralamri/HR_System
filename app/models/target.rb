class Target < ApplicationRecord
    belongs_to :team, optional: true
    
     # validation
    validates :title, presence: true, length: {minimum: 3}
    validates :description, length: {minimum: 5}
    validates :start_date, presence: true , comparison: {less_than: :finish_date }
    validates :finish_date, presence: true
    validates :status, presence: true
end
