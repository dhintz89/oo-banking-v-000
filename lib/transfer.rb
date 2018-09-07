class Transfer
  attr_accessor :status, :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
  
  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end
  
  def execute_transaction
    if @status == "pending"
      if self.valid? == true
        sender.balance -= @amount
        receiver.balance += @amount
        @status = "complete"
      else
        puts "Transaction rejected. Please check your account balance."
        @status = "rejected"
      end
    end
  end
  
  def reverse_transfer
    if @status == "complete"
      receiver.balance -= @amount
      sender.balance += @amount
      @status = "reversed"
    end
  end
  
end
