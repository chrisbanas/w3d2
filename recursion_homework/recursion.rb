# Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n).

def sum_to(num)

    return 1 if num == 1
    return nil if num <= 0

    num += sum_to(num - 1)

end

  # Test Cases
#   p sum_to(5)  # => returns 15
#   p sum_to(1)  # => returns 1
#   p sum_to(9)  # => returns 45
#   p sum_to(-8)  # => returns nil





# Write a function add_numbers(nums_array) that takes in an array of Integers and returns the sum of those numbers. Write this method recursively.

def add_numbers(arr)

    return nil if arr.empty?
    return arr.first if arr.count == 1

    arr[0] += add_numbers(arr[1..-1])

end

  # Test Cases
#   p add_numbers([1,2,3,4]) # => returns 10
#   p add_numbers([3]) # => returns 3
#   p add_numbers([-80,34,7]) # => returns -39
#   p add_numbers([]) # => returns nil





#   Let's write a method that will solve Gamma Function recursively. The Gamma Function is defined as Γ(n) = (n-1)!.

def gamma_fnc

end

  # Test Cases
#   gamma_fnc(0)  # => returns nil
#   gamma_fnc(1)  # => returns 1
#   gamma_fnc(4)  # => returns 6
#   gamma_fnc(8)  # => returns 5040




#   Write a function ice_cream_shop(flavors, favorite) that takes in an array of ice cream flavors available at the ice cream shop and the user's favorite ice cream flavor. Recursively find out whether or not the shop offers their favorite flavor.

def ice_cream_shop(arr, fav)

    return false if arr.empty?
    return false if arr.count == 1 && arr[0] != fav

    if fav == arr[0]
        return true
    else
        ice_cream_shop(arr[1..-1], fav) # if none of the conditions are met it calls this and chops the first index off and trys again untill it reaches 1.
    end

end

  # Test Cases
  p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
  p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
  p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
  p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
  p ice_cream_shop([], 'honey lavender')  # => returns false



#   Write a function reverse(string) that takes in a string and returns it reversed.

def reverse(str)

    return str if str.length == 0
    str = reverse(str[1..-1]) + str[0]

end

  # Test Cases
#   p reverse("house") # => "esuoh"
#   p reverse("dog") # => "god"
#   p reverse("atom") # => "mota"
#   p reverse("q") # => "q"
#   p reverse("id") # => "di"
#   p reverse("") # => ""
