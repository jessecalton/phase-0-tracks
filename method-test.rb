def fun_method(x, y)
  x * y
end

def modified_method(a, b)
  puts fun_method(a, b)
end
modified_method(5, 3)