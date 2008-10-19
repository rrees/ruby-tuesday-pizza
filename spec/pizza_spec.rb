require "#{File.dirname(__FILE__)}/spec_helper"

describe Pizza do

	it "should have a name" do
		pizza = Pizza.new({:name => "Meaty"})
		pizza.name.should == "Meaty"
	end

end