class Person

  def initialize(fields={})
    @name = fields.delete(:name) or raise 'Name missing'
  end

  def attends(tuesday)
    tuesday.attendees << self
  end

  attr_reader :name

end