class Box
   # Initialize our class variables
   @@count = 0
   def initialize(w,h)
      # assign instance avriables
      @width, @height = w, h

      @@count += 1
   end

   def self.printCount()
      puts "Box count is : #{@@count}"
      puts "#{@width}"
   end

   def width
    puts @width
    puts @@count
   end
end

box1 = Box.new(10, 20)
box2 = Box.new(3, 8)
Box.printCount()
box1.width
box2.width