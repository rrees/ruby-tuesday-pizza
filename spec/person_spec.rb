require 'rubygems'
require 'spec'

require "#{File.dirname(__FILE__)}/../app/person"

describe Person do
  
  it "should attend a Tuesday" do
    person = Person.new
    person.attends(Tuesday.next)
  end
end