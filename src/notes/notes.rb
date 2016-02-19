class NotesApplication

	def initialize author
		@author = author
		@notes = []
	end

	def create note_content
		return nil if note_content.length == 0
		@notes << {author: @author,note: note_content,id: @notes.length}
		@notes.length - 1
	end

	def list
		@notes.each{ |note|
			print note
		}
		
	end

	def get note_id
		return @notes[note_id] if @notes[note_id] != nil
		'Invalid Note ID'
	end

	def search search_text
		
	end

	def delete note_id
		@notes.delete_at(note_id) if @notes[note_id] != nil
	end

	def edit note_id, note_content
		return false if @notes[note_id] == nil || note_content.length == 0
		@notes[note_id] = {author: @author,note: note_content,id:note_id}
		true
	end

	
	def print note
		return puts 'Invalid note records' if !note.is_a? Hash
		puts "Note ID: #{note[:id]}"
		puts "#{note[:note]}"
		puts "By Author #{note[:author]}"
		printLine
	end

	def printLine
		puts "--------------------------------------------------------------------"
	end
end

notes = NotesApplication.new 'Sunday'   
notes.create 'testing note'
notes.create 'test 3'
notes.create 'test 4'
notes.list
notes.edit 2, 'just modified'
notes.list