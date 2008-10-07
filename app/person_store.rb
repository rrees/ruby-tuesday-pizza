require 'ramaze/store/default'

module Store 
  
DB = Ramaze::Store::Default.new("#{File.dirname(__FILE__)}/../data/pizza.yaml")end

