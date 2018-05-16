class Person

    #add name to attr_reader so that it cannot be overwritten
    attr_writer
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene=(hygiene_score)
        @hygiene = hygiene_score
        @hygiene.clamp(0,10)
    end

    def happiness=(happiness_score)
        @happiness = happiness_score
        @happiness.clamp(0,10)

    end

    def get_paid (salary_amount)

        self.bank_account += salary_amount
        'all about the benjamins'
    end









end
