class OrangeTree
  def initialize height
    @height          = height
    @fruit           = 0
    @one_year_passes = 0
    @pick_an_orange  = 1
    @orange_count    = 0

    puts "You just have a tree #{@height} feet tall."
  end

  def to_s
    "height:#@height,fruit:#@fruit"
  end

  def height
    puts "Your tree is #{@height} feet tall." # default setting
  end

  def one_year_passes years
    @one_year_passes = years #
    @height = @height + 2 * years # Getting 2 foot highter per year

    puts "The tree is #{@one_year_passes} years old."     
    
    if @one_year_passes < 15
      @orange_count = 3
    elsif @one_year_passes > 14 && @one_year_passes < 55
      @orange_count = 6
    elsif @one_year_passes > 54 && @one_year_passes <85
      @orange_count = 9
    else
      @orange_count = 0
      puts "The tree dies."
    end


    puts "It will produce #{@orange_count} orange every year."
  end

  def pick_an_orange
    @orange_count = @orange_count - 1

    if @one_year_passes > 84
      puts "The tree dies already, no more orange!"
    elsif @orange_count >=0
      puts "You get 1 orange, it's yummy! "
    else
      puts "There is no more oranges, please wait until next year!"
    end

  end

end

tree = OrangeTree.new 5
tree.height
tree.one_year_passes(10)
tree.height
tree.pick_an_orange

puts "the string of tree is #{tree}"

#   Make an OrangeTree class that has a height method that returns
### @height method @ intialize
# its height and a one_year_passes method that, when called, ages the tree one
### @one_year_passes method that increment
# year. Each year the tree grows taller (however much you think an orange
### @height increse along with @one_year_passes
# tree should grow in a year), and after some number of years (again, your
### @one_year_passes trigger death
# call) the tree should die. For the first few years, it should not produce
# fruit, but after a while it should, and I guess that older trees produce
# more each year than younger trees…whatever you think makes the most
### @one_year_passes at some level will trigger @orange_count and @orange_count will imcrement
# sense. And, of course, you should be able to count_the_oranges (which returns
# the number of oranges on the tree) and pick_an_orange (which reduces the
# @orange_count by 1 and returns a string telling you how delicious the orange
# was, or else it just tells you that there are no more oranges to pick this
### @pick_an_orange
# year). Make sure any oranges you don’t pick one year fall off before the
# next year.
### @orange_count will be gone after @one_year_passes