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
    if @status = "pending" && @sender.balance > amount && self.valid?
       @sender.balance = @sender.balance - amount
       @receiver.balance = @receiver.balance + amount
       @status = "complete"
    elsif  @status = "pending" && @sender.balance < amount
    puts "Transaction rejected. Please check your account balance."
    else
       @status = "rejected"
  end

  end

  def reverse_transfer
  end

end
