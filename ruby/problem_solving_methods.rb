arr = [42, 89, 23, 1]
def search_array(arr, x)
  counter = 0
  arr.each do |n|
    if n == x 
      p counter
    else
      counter += 1
    end
  end
end

p search_array(arr, 1)

### Fibonacci Sequence

def fibSeq(n)

  a = [0]

  (n+1).times do |i|
    if i==0
      a[i] = 0
    elsif i==1
      a[i] = 1
    else
      a << a[i-1] + a[i-2]
    end  
  end
  return a
end

p fibSeq(30)

### Bubble Sort

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

new_array = [1, 3, 5, 4, 6, 2]
bubble_sort(new_array)

### Pseudocode for bubble sort

# Define method(array)
#   Get a value for the length of the array.
  
#   Loop through the values in the array to see whether did or did not loop (use loop do) (use a boolean)
#     swapped = false

#     Iterate through the array to see if values in array need to be swapped.
#     The amount of times to iterate will be equal to the length of the array minus one.
#     (n-1).times do |x|
#       if array[x] is greater than the array in the next position (array[x+1]) then SWAP
#       Swap equation: array[x], array[x + 1] = array[x + 1], array[x]
#       Swapped now equals true and alters the array
#     If the conditional is not true, then break
#   call array
# End method

# call method(array)

### Our emotional state was equal parts overwhelmed and excited.
### There is still much to learn and much that needs to be reviewed
### in our Ruby studies.
