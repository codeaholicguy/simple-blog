class Article < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5 }
	has_many :comments

	def increase_number_of_view
		self.views == nil ? self.views = 1 : self.views += 1
	end
end
