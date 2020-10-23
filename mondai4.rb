t = gets.to_i
#to_i忘れずに
t.times do
    n = gets.to_i
    a = []
    #[]でaに数字が複数はいる
    for i in 1..n-1 do
    d = n%i
        if d == 0 then
            a<<i
            #aにiを代入
        end
    end
    s = a.sum
    #aを足す
    if n == s
        puts "perfect"
    elsif n-s == 1
        puts "nearly"
    else
        puts "neither"
    end
end