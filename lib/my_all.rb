require 'pry'

def my_all?(collection)
  if collection.class == Fixnum
    if collection < 3
      "true"
    else "false"
    end
    
  else
    binding.pry
    i = 0
  arr = []
  while i < collection.length - 1
    arr << yield(collection[i])
    i += 1
  end
  if arr.include?("false")
     "false"
  else "true"
end
end
end

my_all?(2) { 2 < 3 }
