# frozen_string_literal: true

# Write an algorithm that takes an array 
# and moves all of the zeros to the end,
# preserving the order of the other elements.
# moveZeros [1,2,0,1,0,1,0,3,0,1] #-> [1,2,1,1,3,1,0,0,0,0]

def moveZeros(arr)
  zeros = arr.count(0)
  arr.delete_if { |el| el == 0 }
  zeros.times { arr.push(0) }
  arr
end

# Best Practices

def moveZeros(arr)
  zeros = arr.count(0)
  arr.delete(0)
  arr.fill(0, arr.size, zeros)
end
