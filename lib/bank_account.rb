class BankAccount

  attr_accessor balance:, status:
  attr_reader name:


def initialize (name, balance=1000, status="open")
  @name = name
  @balance = balance
  @status = status
end

def deposit
end

def display_balance
end

def valid?
end

def close_account
end

end
