class Team < ApplicationRecord
    has_many :employees, dependent: :nullify
    has_many :targets, dependent: :nullify
    belongs_to :division

    # validation
    validates :name, length: {minimum: 3}
    validates :description, length: {minimum: 5}
    # validates :members, length: {minimum: 2}
    # validates :team_lead, length: {minimum: 3}
end
