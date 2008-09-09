require 'date'

class Tuesday
    
  @@first_ruby_tuesday = DateTime.parse('2008-09-09')
  
  def self.next
    date = DateTime.now
    
    while date.wday != 2
      date += 1
    end

    if (!ruby_week?(date))
      date += 7
    end
    
    new(date)
  end
  
  def next()
    Tuesday.new(@date + 14)
  end

  def to_s
    @date.strftime("%Y-%m-%d")
  end
  
  protected
  
  def initialize(date)
    @date = date
  end

  def self.ruby_week?(candidate)
    ((candidate.cweek - @@first_ruby_tuesday.cweek) % 2) == 0
  end
  
end