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
    
    
          expect(amanda.balance).to eq(950)
      expect(avi.balance).to eq(1050)
      expect(transfer.status).to eq("complete")
  end
  
end