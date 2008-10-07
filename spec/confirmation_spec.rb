require File.dirname(__FILE__) + '/spec_helper'

describe Confirmation do
  
  it "should have a person's name" do
    confirmation = Confirmation.new(:name => "dan")
    confirmation.name.should == "dan"
  end
  
  it "should have a pizza choice" do
    confirmation = Confirmation.new(:choice => Pizza::DEFAULT)
    confirmation.choice.should == Pizza::DEFAULT
  end
  
  it "should be stored" do
    confirmation = Confirmation.new(:name => "carlos", :choice => Pizza::SPICY)
    ConfirmationStore.save(confirmation)
    ConfirmationStore.load_all.should include(confirmation)
    
  end
  
end