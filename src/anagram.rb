RSpec.describe "Anagram" do

  it "no matches" do
    subject = Anagram.new("diaper")
    matches = subject.matches("hello", "world", "zombies", "pants")

    expect(matches).to eq []
  end

  it "detects simple Anagram" do
    subject = Anagram.new("ban")
    matches = subject.matches('nab', 'stand', 'at')
    expect(matches).to eq ['nab']
  end

  it "does not detect false positives" do
    subject = Anagram.new("galea")
    matches = subject.matches("eagle")

    expect(matches).to eq []
  end

  it "detects multiple Anagrams" do
    subject = Anagram.new("master")
    matches = subject.matches('stream', 'pigeon', 'maters')

    expect(matches).to eq ['stream', 'maters']
  end

  it "does not detect Anagram subsets" do
    subject = Anagram.new("good")
    matches = subject.matches('dog', 'goody')

    expect(matches).to eq []
  end

  it "detects Anagram" do
    subject = Anagram.new("listen")
    matches = subject.matches('enlists', 'google', 'inlets', 'banana')

    expect(matches).to eq ['inlets']
  end

  it "detects multiple Anagrams" do
    subject = Anagram.new("allergy")
    matches = subject.matches('gallery', 'ballerina', 'regally', 'clergy', 'largely', 'leading');

    expect(matches).to eq ['gallery', 'regally', 'largely']
  end

  it "detects Anagrams case-insensitively" do
    subject = Anagram.new("Orchestra");
    matches = subject.matches('cashregister', 'Carthorse', 'radishes')

    expect(matches).to eq ['Carthorse']
  end

  it "does not detect a word as its own Anagram" do
    subject = Anagram.new("banana");
    matches = subject.matches('Banana')

    expect(matches).to eq []
  end

  it "matches() accepts string arguments" do
    subject = Anagram.new("yeet");
    matches = subject.matches("stand", "yete", "at")

    expect(matches).to eq ["yete"]
  end

  it "matches() accepts single string argument" do
    subject = Anagram.new("yeet");
    matches = subject.matches("teey")

    expect(matches).to eq ["teey"]
  end
end


class Anagram
   def initialize(str)
      @str = str 
      @anagram = []
   end
   
   def matchesScan *args
     args.each{|word|
         match =  word.downcase.scan(/[#{@str.downcase}]/).join
         @anagram << word if (match != @str) && (match.length == @str.length) && (!falsePositive?(match))
     }
     @anagram
       
   end

   def matches *args
       args.each{|word|
           ordered_word =  word.downcase.split('').sort.join
           ordered_string = @str.downcase.split('').sort.join
           @anagram << word if ordered_word == ordered_string && @str.downcase != word.downcase
       }
       @anagram
       
   end
   
   private
   def falsePositive? word
       i = 0
       while i < @str.length
          letter = @str[i].downcase
          total_str_letter = @str.downcase.scan(/[#{letter}]/)
          total_word_letter = word.scan(/[#{letter}]/)
          return true if total_word_letter.size != total_str_letter.size
          i += 1
       end
       false
   end
end