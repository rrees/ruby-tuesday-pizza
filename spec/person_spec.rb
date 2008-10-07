require "#{File.dirname(__FILE__)}/spec_helper"

describe Person do
  
  it "should attend a Tuesday" do
    # Given
    person = Person.new
    tuesday = Tuesday.next
    attendees = []
    tuesday.should_receive(:attendees).and_return(attendees)
    
    # When
    person.attends(tuesday)
    
    # Then
    attendees.should include(person)
  end
end