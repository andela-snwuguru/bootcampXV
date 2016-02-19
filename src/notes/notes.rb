class NotesApplication

	def initialize author
		@author = author
		@notes = []
	end

	def create note_content
		return nil if note_content.length == 0
		@notes << {author: @author,note: note_content}
		@notes.length - 1
	end

	def list

	end

	def get note_id

	end

	def search search_text
		
	end

	def delete

	end

	def edit

	end
end

notes = NotesApplication.new 'Sunday'   
puts notes.create 'testing note'