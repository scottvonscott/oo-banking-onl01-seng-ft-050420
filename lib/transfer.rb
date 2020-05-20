class Transfer

attr_accessor :sender, :receiver, :status, :transfer

  def initialize (sender, receiver, status="pending", transfer)
    @sender = sender
    @receiver = receiver
    @status = status
    @transfer = transfer
  end

  def valid?
  end

  def execute_transaction
  end

  def reverse_transfer
  end

end
