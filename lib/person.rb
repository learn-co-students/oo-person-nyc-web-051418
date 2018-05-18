require 'Pry'

class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?

    @happiness > 7 ? true : false

  end

  def clean?

   @hygiene > 7 ? true : false

  end

  def get_paid(num)

    @bank_account += num
    "all about the benjamins"

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

  def call_friend(friend)

    [friend, self].each {|happy| happy.happiness += 3 }
    "Hi #{friend.name}! It's #{self.name}. How are you?"

  end

  def start_conversation (person, topic)

    conversation = [self, person]

    if topic == "politics"
      conversation.each {|sad| sad.happiness -= 2}
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      conversation.each {|happy| happy.happiness += 1}
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end
