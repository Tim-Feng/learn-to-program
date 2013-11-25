M = 'land'
o = 'water'
world = [[M,M,o,o,o,o,o,o,o,o,o],
         [M,M,o,o,M,M,o,o,o,o,o],
         [o,o,o,M,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,M],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,M,o,o,o,o],
         [o,o,o,o,o,o,M,o,o,o,o]]

def continent_size world, x, y
  if x > 10 || y > 10
    return 0
  end

  # why first y then x? because we list the array "world" with y elements 
  # which has x elements inside, so we have to choose the yth element then the xth
  
  if world[y][x] != 'land'
    # this returns the continent_size with value = 0
    return 0
  end
  # initial condition with size = 1
  size = 1
  # change current element to 'counted land' as a mark
  # remember, x & y start at 0
  world[y][x] = 'counted land'

  # recursive comes from here
  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y )
  size = size + continent_size(world, x+1, y )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end

puts continent_size(world, 5, 5)