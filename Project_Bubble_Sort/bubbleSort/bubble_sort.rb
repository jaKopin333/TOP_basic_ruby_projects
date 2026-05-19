# Call method with parmeter
def bubble_sort(arr)
  
  # Repeat passes through the array
  arr.length.times do
    # Loop through indexes from 0 to the 2nd to last item
  (0...arr.length - 1).each do |i|
    # Compare current number to the number on the right
    # If left number is bigger, swap them
    if arr[i] > arr[i + 1]
      #This is how the swapping happens and ends with the arr changing
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
    end
  end
end
# Return sorted array 
  arr
end
# Run method
p bubble_sort([9,5,4,3,2,1])