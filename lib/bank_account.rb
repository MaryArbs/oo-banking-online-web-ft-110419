class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  @@all= []

  def initialize (name)
   @name=name
   @balance = 1000
   @status = "open"
   self.save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def deposit (money)
    @balance += money
  end

<<<<<<< HEAD
  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
  @status == "open" && @balance > 0 ? true : false  #valid with an open status and a balance greater than 0
  end

  def close_account
    @status = "closed"
  end

=======
>>>>>>> 04665e3cb3777888229def9fd8bc8296fd0b4e49
end
