require 'pry'

class Person

  attr_accessor :bank_account, :hygiene
  attr_reader :name, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
      @happiness = points
      adjust_happiness
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def hygiene=(points)
    @hygiene = points
    adjust_hygiene
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about the benjamins"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3

    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)

    case topic
      when "politics"
        person.happiness -= 2
        self.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        person.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
    end
  end

  private

  def adjust_happiness
    @happiness < 0 ? @happiness = 0 : @happiness
    @happiness > 10 ? @happiness = 10 : @happiness
  end

  def adjust_hygiene
    @hygiene < 0 ? @hygiene = 0 : @hygiene
    @hygiene > 10 ? @hygiene = 10 : @hygiene
  end

end

penelope = Person.new("Penelope")

penelope.hygiene = 9
penelope.take_bath

#binding.pry
true
