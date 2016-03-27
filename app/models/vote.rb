class Vote < ActiveRecord::Base
	has_many :candidates
end
