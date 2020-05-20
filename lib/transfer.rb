class Transfer

attr_accessor :sender, :receiver, :status, :transfer_amount

  def initialize (sender, receiver, status="pending", transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @transfer_amount = transfer_amount
  end

  def valid?
  end

  def execute_transaction
  end

  def reverse_transfer
  end

end
