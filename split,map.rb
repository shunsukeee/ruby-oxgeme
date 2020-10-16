input = gets

r1r2 = input.split(" ").map{|n|n.to_i}
#split文字列を配列に
#map{|変数名|処理、上ならto_iで数字に}

puts r1r2[0]**3-r1r2[1]**3