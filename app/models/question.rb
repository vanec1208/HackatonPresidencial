class Question < ActiveRecord::Base
	has_many :answers

	def shuffle_answers
		@answers = Candidate.all.shuffle.map do |candidate|
  		candidate.answers.where(question_id: self.id).order("RANDOM()").first
		end
	end
end
