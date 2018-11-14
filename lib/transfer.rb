class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if @sender.valid? && @receiver.valid?
      TRUE
    else
      FALSE
    end
  end
  
  def execute_transaction
    if @status == "pending" && @sender.valid?
      @sender.balance = @sender.balance - @amount
      @receiver.balance = @receiver.balance + @amount
      @status = "complete"
    end
  end
  
end