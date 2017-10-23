# Transform the following first arrays into the second entities:
# [1, 2, 3, 4, 5] => [2, 3, 4, 5, 6]

def one(array)
  array.shift
  array << 6
end
# puts one([1, 2, 3, 4, 5])

# [1, 3, 5, 4, 2] => [1, 2, 3, 4, 5]

def two(array)
  array.sort
end
#puts two([1, 3, 5, 4, 2])

# [1, 3, 5, 4, 2] => [2, 3, 4, 5, 6]
def three(array)
  array.sort!.shift
  array << 6
end
#puts three([1, 3, 5, 4, 2])

# [1, 2, 3, 4, 5] => 15 (the sum)
def four(array)
  array.map.inject(:+)
end
#puts four([1, 2, 3, 4, 5])


# [1, 2, 3, 4, 5] => 30 (twice the sum)
def five(array)
  array.map.inject(:+) *2
end
#puts five([1, 2, 3, 4, 5])




# { a: 1, b: 2 } => { a: 2, b: 3 }
def six(hash)
  hash.each do |k,v|
    hash[k] = v + 1
  end
  hash
end
#puts six({ a: 1, b: 2 })


# { a: 2, b: 5, c: 1 } => { a: 1, b: 2, c: 5 }

def seven(hash)
  val = []
  hash.each do |k,v|
    val += [v]
  end
  val = val.sort

  counter = 0
  hash.each do |k,v|
    hash[k] = val[counter]
    counter += 1
  end
  hash
end
#puts seven({ a: 2, b: 5, c: 1 }).inspect



# { a: 2, b: 5, c: 1 } => [1, 2, 5]
def eight(hash)
  val = []
  hash.each  { |k,v| val += [v]}
  val.sort
end
#puts eight({ a: 2, b: 5, c: 1 } )

# { a: 1, b: 2, c: 3 } => { "1"=>"a", "2"=>"b", "3"=>"c" }
def nine(hash)
  hash = hash.invert
  proc = hash.collect do |k,v|
    [k.to_s, v.to_s]
  end
  Hash[*proc.flatten(1)]
end
puts nine({ a: 1, b: 2, c: 3 }).inspect
