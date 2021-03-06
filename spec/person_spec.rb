require "#{File.dirname(__FILE__)}/spec_helper"

describe Person do
  
  it "should attend a Tuesday" do
    # Given
    person = Person.new :name => "Carlos"
    tuesday = Tuesday.next
    attendees = []
    tuesday.should_receive(:attendees).and_return(attendees)
    
    # When
    person.attends(tuesday)
    
    # Then
    attendees.should include(person)
  end
  
  it "should have a name" do
    person = Person.new :name => "Danilo"
    
    person.name.should == "Danilo"
  end
  
  it "should not allow empty names" do
    proc { Person.new }.should raise_error
  end
  
  it "should have a default pizza preference" do
    person = Person.new :name => 'Rob'
    person.preference.should == Pizza::DEFAULT
  end
  
  it "should have a pizza preference" do
    person = Person.new :name => 'Rob', :pizza => Pizza::MEATY
    person.preference.should == Pizza::MEATY
  end

end