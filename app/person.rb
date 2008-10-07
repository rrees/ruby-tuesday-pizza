class Person

  def initialize(fields={})
    @name = fields[:name] or raise 'Name missing'
    @pizza = fields[:pizza] || Pizza::DEFAULT
  end

  def attends(tuesday)
    tuesday.attendees << self
  end

  def preference
    @pizza
  end
  
  attr_reader :name

end