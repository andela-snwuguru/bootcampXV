=begin
RSpec.describe "Reverse String Tests" do
  context "normal words" do
    it "should return `skoob`" do
  		expect(reverse("books")).to eq "skoob"
  	end
  	
  	it "should return `nomolos`" do
  		expect(reverse("solomon")).to eq "nomolos"
  	end
  end
  
  context "palindromes" do
    it "should return true" do
  		expect(reverse("ana")).to eq true
  	end
  end
  
  context "empty strings" do
    it "should return null" do
  		expect(reverse("")).to eq nil
  	end
  end
end
=end

def reverse(str)
   i = str.length - 1
   reversed = ''
   
   while i >= 0
      reversed << str[i]
      i -= 1
    end

    return true if reversed == str && reversed.length > 0
    reversed if reversed.length > 0
end

p reverse ''