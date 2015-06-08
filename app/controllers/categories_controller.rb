class CategoriesController < ApplicationController

	def index
		@categories = Category.all
		
		@dining = @categories[2]
		@entertainment = @categories[3]
		@retail = @categories[4]
		@activity = @categories[5]
		@travel = @categories[6]
		@misc = @categories[7]
	end
end
