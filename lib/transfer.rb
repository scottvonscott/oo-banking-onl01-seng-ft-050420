class Transfer

attr_accessor :sender, :receiver, :status, :amount

  def initialize (sender, receiver, status="pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

  def valid?
    @sender.valid? & @receiver.valid?
  end

  def execute_transaction
    @sender.balance = @sender.balance - amount
    @receiver.balance = @receiver.balance + amount
  end

  def reverse_transfer
  end

end
