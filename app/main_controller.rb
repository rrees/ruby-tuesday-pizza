require 'rubygems'
require 'ramaze'
require "#{File.dirname(__FILE__)}/tuesday"

class MainController < Ramaze::Controller

  engine :Haml
  
  def index
    @title = "Welcome to Ruby Tuesdays"
    @content = "Do you want pizza?"
    @next_date = Tuesday.next
  end
  
  def signup
  end

  def coming
    @pizza = "pizza"
  end

  def who
    @tuesdays = ['Tuesday 1', 'Tuesday 2']
  end

end
