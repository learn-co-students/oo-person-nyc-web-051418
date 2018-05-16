require 'pry'

class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness_index)
      #binding.pry
        @happiness = happiness_index
        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness > 10
    end

    def hygiene=(hygiene_index)
        @hygiene = hygiene_index
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene > 10
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid (salary_amount)
        @bank_account += salary_amount
        'all about the benjamins'
    end

    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        @happiness += 2
        "♪ another one bites the dust ♫"
    end

end

me = Person.new("Matt")

#binding.pry
true
