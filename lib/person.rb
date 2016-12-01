require 'pry'

class Person

  def initialize(name)
    @name =name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = happiness
    if self.happiness > 10
      self.happiness = 10
    elsif self.happiness < 0
      self.happiness = 0
    end
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if self.hygiene > 10
      self.hygiene = 10
    elsif self.hygiene < 0
      self.hygiene = 0
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @salary = salary
    @bank_account += @salary
    "all about the benjamins"
  end

  def take_bath
    hygiene=(self.hygiene += 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    happiness=(self.happiness += 2)
    hygiene=(self.hygiene -=3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    happiness=(self.happiness += 3)
    happiness=(person.happiness += 3)
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      happiness=(self.happiness -= 2)
      happiness=(person.happiness -= 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      happiness=(self.happiness += 1)
      happpiness=(person.happiness += 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end


  attr_reader :name, :happiness, :hygiene

  attr_accessor :bank_account

end