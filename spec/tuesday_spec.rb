require "#{File.dirname(__FILE__)}/../app/tuesday"

describe Tuesday do

  before(:each) do
    DateTime.stub!(:now).and_return(DateTime.parse('2008-09-09'))
  end

  it "should give us an instance of the next tuesday so i can add attendees to it" do
    Tuesday.next.should_not be_nil
  end
  
  it "should represent its own date" do
    Tuesday.next.to_s.should == '2008-09-09'
  end

  it "should only be a tuesday every 2 weeks" do
    Tuesday.next.next.to_s.should == '2008-09-23'
  end
  
  it "should allow people to sign up to it"
  
  it "should know who's coming to it"
  it "should tell you what pizzas to buy"

  # bonus features
  it "should have a topic"
  it "should have a capacity"
  
end