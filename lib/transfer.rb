require 'pry'
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
    if @sender.balance < amount
      "Transaction rejected. Please check your account balance."
    elsif self.valid?
      @status != "complete"
       @sender.balance = @sender.balance - amount
       @receiver.balance = @receiver.balance + amount
       @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
  end

end
