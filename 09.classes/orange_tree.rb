class OrangeTree

  def initialize
    @height = 1
    @age = 0
    @orangeCount = 0
    @lifeExpectancy = 30 + rand(51) # die between age 30 and 80
    puts "A new orange tree sprouted!"
  end

  def height
    puts "The tree is " + @height.to_s + " feet tall."
  end

  def countTheOranges
    puts "The tree has " + @orangeCount.to_s + " oranges on it."
  end

  def pickAnOrange
    if @orangeCount > 0
      @orangeCount = @orangeCount - 1
      puts "Mmmmm. What a juicy, delicous orange."
    else
      puts "Sorry, no oranges here."
    end
  end

  def oneYearPasses
    # adjust the age
    @age = @age + 1
    if @age > @lifeExpectancy
      puts "The tree died of old age."
      exit
    end

    # grow in height
    @height = @height + rand(4) + 1 # grow between 1 and 5 feet each year

    # lose old oragnes and grow new ones, if old enough
    @orangeCount = 0
    if @age > 4
      @orangeCount = 1 + rand(50) # between 1 and 50 new oranges
    end

    puts "The tree is now " + @age.to_s + " years old."
  end

end

tree = OrangeTree.new
tree.height
tree.pickAnOrange
tree.countTheOranges
tree.oneYearPasses
tree.height
tree.oneYearPasses
tree.height
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.countTheOranges
tree.pickAnOrange
tree.pickAnOrange
tree.countTheOranges
tree.height
tree.oneYearPasses
tree.oneYearPasses
