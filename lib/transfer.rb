class Transfer
  attr_accessor :status, :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    
  end
  
  def reverse_transfer
    
  end
  
end
