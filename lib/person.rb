# your code goes here

class Person
  attr_accessor :bank_account
  attr_reader :happiness, :hygiene, :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(amt)
    if amt > 10
      @happiness = 10
    elsif amt < 0
      @happiness = 0
    else
      @happiness = amt
    end
  end

  def hygiene=(amt)
    if amt > 10
      @hygiene = 10
    elsif amt < 0
      @hygiene = 0
    else
      @hygiene = amt
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(self.hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = self.happiness+2
    self.hygiene = self.hygiene-3
    "♪ another one bites the dust ♫"
  end

  def call_friend(callee)
    self.happiness = self.happiness+3
    callee.happiness = callee.happiness+3
    return "Hi #{callee.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(callee, topic)
    if topic == 'politics'
      self.happiness = self.happiness - 2
      callee.happiness = callee.happiness - 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness = self.happiness + 1
      callee.happiness = callee.happiness + 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end
end
