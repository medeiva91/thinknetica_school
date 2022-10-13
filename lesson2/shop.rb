hash = {}
loop do 
  puts "Input product"
  product = gets.chomp.downcase
  break if product == "stop"
  
  puts "Input unit price"
  price = gets.chomp.to_i
  
  puts "Input count"
  count = gets.chomp.to_i

  hash[product] =  { price => count }
end

sum = 0
hash.each do |key, value|	
  arr = value.to_a
  product_sum = arr[0][0]*arr[0][1]
  sum += product_sum
  puts "product: #{key}, price: #{arr[0]}, count: #{arr[1]}, sum: #{product_sum}"
end

puts "Purchase amount: #{sum}"
