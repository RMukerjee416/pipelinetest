class Player < ApplicationRecord
	validates :name, presence: true, length: {minimum: 5}
	validates :team, presence: true, length: {minimum: 5}
	validates :moment, presence: true, length: {minimum: 5}
end
