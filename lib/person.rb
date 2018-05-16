
require 'pry'
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(index)
    @happiness = index
    @happiness = 10 if @happiness > 10
    # binding.pry
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(index)
    @hygiene = index
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
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
    self.hygiene = @hygiene+4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = @happiness+2
    self.hygiene = @hygiene-3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness+3
    Person.new(friend)
    friend.happiness = friend.happiness+3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)
    Person.new(friend)
    "Hi #{friend.name}! It's #{@name}. How are you?"
    if topic == "politics"
      self.happiness = @happiness-2
      friend.happiness = friend.happiness-2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness+1
      friend.happiness = friend.happiness+1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"

    end

  end

end
