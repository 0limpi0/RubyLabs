# TODO

=begin
  How could you improve this class? You might:

    Include a deposit method that lets users add money to their accounts
    Include error checking that prevents users from overdrawing their accounts
    Create CheckingAccounts or SavingsAccounts that inherit from Account

=end

class Account
  attr_reader :name, :balance
  
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
  	return "Access denied: incorrect PIN."
  end
  
  public
  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  def withdraw(pin_number,amount)
  	if pin_number = pin
      @balance - amount
      puts "Withdrew #{amount}. New balance: $#{@balance}." 
    else
      pin_error
    end
  end
end

checking_account = Account.new("Oly", 1_000_000)
