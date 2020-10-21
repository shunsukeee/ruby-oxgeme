input = gets
number = input.split(" ").sort_by{|x| x.to_i }
n1 = number[3] + number[0]
n2 = number[2] + number[1]
puts n1.to_i + n2.to_i

#sort_byで降順に並べ替えている