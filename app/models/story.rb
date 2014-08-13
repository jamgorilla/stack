class Story < ActiveRecord::Base
	# class is a template for building an object/ story instances
	
	validates_format_of :url, with: URI.regexp
	
	validates :url, presence: true, uniqueness: true
	
	validates :title, presence: true, uniqueness: true

	validates :description, length: { maximum: 150, minimum: 10 }
	
	has_many :comments
	has_many :votes
	

end
