RSpec.describe "Word Count Tests" do
	it "counts one word" do
	  expectedCounts = { "word" => 1 };
		expect(words("word")).to eq expectedCounts
	end
	
	it "counts one of each" do
	  expectedCounts = { "one" => 1, "of" => 1, "each" => 1 };
		expect(words("one of each")).to eq expectedCounts
	end
	
	it "counts multiple occurrences" do
	  expectedCounts = { "one"=> 1, "fish"=> 4, "two"=> 1, "red"=> 1, "blue"=> 1 };
		expect(words("one fish two fish red fish blue fish")).to eq expectedCounts
	end
	
	it "includes punctuation" do
	  expectedCounts = { "car"=> 1, ":"=> 2, "carpet"=> 1, "as"=> 1, "java"=> 1, "javascript!!&@$%^&"=> 1 };
		expect(words("car : carpet as java : javascript!!&@$%^&")).to eq expectedCounts
	end
	
	it "includes numbers" do
	  expectedCounts = { "testing"=> 2, "1"=> 1, "2"=> 1 };
    expect(words("testing 1 2 testing")).to eq expectedCounts
	end
	
  it "counts multiline" do
	  expectedCounts = { "hello"=> 1, "world"=> 1};
    expect(words("hello\nworld")).to eq expectedCounts
	end
	
	it "counts tabs" do
	  expectedCounts = { "hello"=> 1, "world"=> 1};
    expect(words("hello\tworld")).to eq expectedCounts
	end
end


def words(words)
    result = Hash.new(0)
   words.split.each{|word|
    result[word] += 1
   }
   result
end
