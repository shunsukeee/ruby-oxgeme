input = gets
a = input.split(" ").map{|n|n.to_i}
po = 0
a[1].times do
    u = gets.to_i
    if po < u
       a[0] = a[0]-u
       po = (po + u * 0.1).round
       puts a[0].to_s + " " + po.to_s
    else
        po = po - u
        puts a[0].to_s + " " + po.to_s
    end
end
