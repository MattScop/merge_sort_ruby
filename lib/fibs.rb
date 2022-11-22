=begin 
Using iteration, write a method #fibs which takes a number and returns an array containing that many numbers from the fibonacci sequence. 
Using an example input of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].
=end

# def fibs(num, array = [])
#   i = 0
#   while i != num
#     case i
#     when 0 then array << 0
#     when 1 then array << 1
#     else
#       array << (array[i - 1] + array[i - 2])
#     end
#     i += 1
#   end
#   array
# end
# fibs(8)

=begin 
Now write another method #fibs_rec which solves the same problem recursively. This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider either of these lengths a requirement… just get it done).
=end

def fibs_rec(num, array = [])
    if num == 2
      array.push(0)
      array.push(1)
    else
      fibs_rec(num - 1, array)
    end
    array << array[num - 1] + array[num - 2]
    return array
  end
  fibs_rec(8)
  