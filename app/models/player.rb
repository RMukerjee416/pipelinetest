class Player < ApplicationRecord
	validates :name, presence: true, length: {minimum: 5}
	validates :team, presence: true
	validates :moment, presence: true
end
