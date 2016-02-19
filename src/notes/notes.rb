class NotesApplication

	def initialize author
		@author = author
		@notes = []
	end

	def create note_content

	end

	def list

	end

	def get note_id

	end

	def search
		@author
	end

	def delete

	end

	def edit

	end
end

notes = NotesApplication.new 'Sunday'   
puts notes.search