
class ConfirmationStore
  
  @@confirmations = []
  
  def self.save(confirmation)
    @@confirmations << confirmation
  end
  
  def self.load_all()
    @@confirmations
  end
  
end