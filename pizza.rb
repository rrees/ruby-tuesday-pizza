require 'rubygems'
require 'ramaze'

class MainController < Ramaze::Controller

  engine :Haml
  
  def index
    @title = "Welcome to Ruby Tuesdays"
    @content = "Do you want pizza?"
    @next_date = "Tuesday"
  end
  
end

Ramaze.start