
class Confirmation
  
  attr_reader :name, :choice
  
  def initialize(fields={}) 
    @name = fields[:name]
    @choice = fields[:choice]
  end

end