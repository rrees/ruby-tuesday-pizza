class Pizza
	DEFAULT = Pizza.new
	MEATY = Pizza.new
	SPICY = Pizza.new  
  attr_reader :name
  
  def initialize(opts={})
    @name = opts[:name]
  end
end