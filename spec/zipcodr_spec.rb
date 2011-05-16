require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Zipcodr do
  context "When I inquire about a zipcode" do
    it "it returns valid US zip code" do
      Zipcodr::find('94720').zip.should == '94720'
    end
    
    it "it returns valid city" do
      Zipcodr::find('94720').city.should == 'BERKELEY'
    end
    
    it "it returns valid state" do
      Zipcodr::find('94720').state.should == 'CA'
    end
    
    it "it returns valid county" do
      Zipcodr::find('94720').county.should == 'ALAMEDA'
    end
    
    it "it returns valid longitude" do
      Zipcodr::find('94720').long.should == -122.253582
    end
    
    it "it returns valid latitude" do
      Zipcodr::find('94720').lat.should == 37.866825
    end

    it "it should be valid zip code object" do
      Zipcodr::find('94720').should be_valid
    end
  end
end