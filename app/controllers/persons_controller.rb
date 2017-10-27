class PersonsController < ApplicationController
	def index
		@persons = Person.all
	end

	def import
		Person.import(params[:file])
		redirect_to root_url, notice: 'Data successfully imported'
	end
end
