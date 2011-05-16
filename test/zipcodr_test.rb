require File.expand_path(File.dirname(__FILE__) + "/test_helper")

module ZipcodrTests
  class ZipcodrTest < Test::Unit::TestCase
    test "returns valid US zip code" do
      assert_match Zipcodr::find('94103').zip, '94103'
    end
    
    test "returns valid city" do
      assert_match Zipcodr::find('94103').city, 'SAN FRANCISCO'
    end
    
    test "returns valid state" do
      assert_match Zipcodr::find('94103').state, 'CA'
    end
    
    test "returns valid county" do
      assert_match Zipcodr::find('94103').county, 'ALAMEDA'
    end
    
    test "returns valid longitude" do
      assert_match Zipcodr::find('94103').long, '94103'
    end
    
    test "returns valid latitude" do
      assert_match Zipcodr::find('94103').lat, '94103'
    end
  end
end