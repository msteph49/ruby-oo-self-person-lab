require "pry"
# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name=name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness
        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness > 10
        @happiness
    end
    def hygiene
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene > 10
        @hygiene
    end
    def happy?
        @happiness > 7 

    end
    def clean?
        @hygiene >7
    end
    def get_paid(salary)
        
        self.bank_account += salary

        "all about the benjamins"
    end

    def take_bath
       self.hygiene += 4
       '♪ Rub-a-dub just relaxing in the tub ♫'

    end
    
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end
    
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        # binding.pry
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
# start_conversation
    #   accepts two arguments, a person to strike a convo with and a topic (FAILED - 1)
    #   topic: politics
    #     returns 'blah blah partisan blah lobbyist' if the topic is politics (FAILED - 2)
    #     if topic is politics, it makes both people in the convo two points less happy (FAILED - 3)
    #     never makes either party less than 0 points happy (never negative)
    #       (hint: use your #happiness= method) (FAILED - 4)
    #     calls on the #happiness= method (FAILED - 5)

    def start_conversation(person, topic)
        if topic == "politics"
            # binding.pry
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif 
            topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end


    end



end