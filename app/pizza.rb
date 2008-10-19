class Pizza

	DEFAULT = Pizza.new
	MEATY = Pizza.new
	SPICY = Pizza.new 
	CHEESY = Pizza.new
	VEGGIE = Pizza.new

	PIZZAS = [DEFAULT, MEATY, SPICY, VEGGIE, CHEESY]

  attr_reader :name
  
  def initialize(opts={})
    @name = opts[:name]
  end
end