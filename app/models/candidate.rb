class Candidate < ActiveRecord::Base
	belongs_to :vote
	has_many :jobs
	has_many :studies
	has_many :answers
end
