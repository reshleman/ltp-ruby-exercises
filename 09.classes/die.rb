class Die

  def initialize
    #  I'll just roll the die, though we
    #  could do something else if we wanted
    #  to, like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat number
    if (number >= 0 && number <= 6)
      @numberShowing = number
    end
    @numberShowing
  end

end

die = Die.new
puts die.showing
puts die.cheat(6)
puts die.cheat(12)
