class Pizza
  DEFAULT = Pizza.new "Cheesy and Tomato-ey"
  MEATY = Pizza.new "Meaty"
  SPICY = Pizza.new "Spicy"
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end