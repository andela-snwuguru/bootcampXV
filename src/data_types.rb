RSpec.describe "Data Types" do
  describe "Case for some falsy values" do
    it "should return falsey' for nil" do
      expect(dataTypes(nil)).to eq 'no value'
    end
    
    it "should return falsey for false" do
      expect(dataTypes(false)).to be_falsey
    end
  end
  
  describe "Case for some Truthy values" do
    it "should return truthy for true" do
      expect(dataTypes(true)).to be_truthy
    end
    
    it "should return truthy for 0" do
      expect(dataTypes(0)).to be_truthy
    end
  end

  
  describe "Case for Numbers" do
    it "should return 'less than 100' for 44" do
      expect(dataTypes(44)).to eq 'less than 100'
    end
    
    it "should return 'more than 100' for 144" do
      expect(dataTypes(144)).to eq 'more than 100'
    end
    
     it "should return 'equal to 100' for 100" do
      expect(dataTypes(100)).to eq 'equal to 100'
    end
  end
  
  describe "Case for Strings" do
    it "should return the length of `tergiversate`" do
      expect(dataTypes('tergiversate')).to eq 12
    end
    
    it "should return the length of an empty string" do
      expect(dataTypes('')).to eq 0
    end
    
     it "should return the length of `555`" do
      expect(dataTypes('555')).to eq 3
    end
  end
  
  
  describe "Case for Arrays" do
    it "should return maximum number in the array" do
      expect(dataTypes([0, 1, 2])).to eq 2
    end
    
    it "should return nil  for empty array" do
      expect(dataTypes([])).to eq nil
    end
    
     it "should return nil for  array with items less than 3`" do
      expect(dataTypes([4, 9])).to eq nil
    end
  end
end



def dataTypes data
    return data.length if data.is_a? String
    return 'no value' if data.is_a? NilClass
    if (data.is_a? TrueClass) || (data.is_a? FalseClass)
        return data 
    end
    
    if data.is_a? Integer
        return true if data == 0
        return 'less than 100' if data < 100
        return 'more than 100' if data > 100
        return 'equal to 100' if data == 100
    end
    
    return data[2] if data.is_a? Array
    
end
