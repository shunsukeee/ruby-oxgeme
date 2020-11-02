input = gets
moner = input.split(" ").map{|x|x.to_i}
time = gets.to_i
total = 0
time.times do
    hour = gets.split(" ").map{|x|x.to_i}
    #条件分岐何時から何時までの働いた時間
    if 0 <= hour[0] && 9 > hour[0]
        if 9 >= hour[1]
            a = (hour[1] - hour[0]) * moner[2]
            total = total + a
        elsif 17 >= hour[1]
            a = (9 - hour[0]) * moner[2]
            b = (hour[1] - 9) * moner[0]
            total = total + a + b
        elsif 22 >= hour[1]
            a = (9 - hour[0]) * moner[2]
            b = 8 * moner[0]
            c = (hour[1] - 17) * moner[1]
            total = total + a + b + c
        else
            a = (9 - hour[0]) * moner[2]
            b = 8 * moner[0]
            c = 5 * moner[1]
            d = (hour[1] - 22) * moner[2]
            total = total + a + b + c + d
        end
    elsif 9 <= hour[0] && 17 > hour[0]
        if 17 >= hour[1]
            a = (hour[1] - hour[0]) * moner[0]
            total = total + a
        elsif 22 >= hour[1]
            a = (17 - hour[0]) * moner[0]
            b = (hour[1] - 17) * moner[1]
            total = total + a + b
        else
            a = (17 - hour[0]) * moner[0]
            b = 5 * moner[1]
            c = (hour[1] - 22) * moner[2]
            total = total + a + b + c
        end
    elsif 17 <= hour[0] && 22 > hour[0]
        if 22 >= hour[1]
            a = (hour[1] - hour[0]) * moner[1]
            total = total + a
        else
            a = (22 - hour[0]) * moner[1]
            b = moner[2]
            total = total + a + b
        end
    else
        a = moner[2]
        total = total + a
    end
end
puts total