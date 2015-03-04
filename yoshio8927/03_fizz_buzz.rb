i = 1
while i <=10
  if i % 5 == 0
    print "buzz"
  elsif i % 3 == 0
    print "fizz"
  elsif i % 3 ==0 && i % 5 ==0
    print "fizzbuzz"
  else
    print i
  end
  i = i + 1
end