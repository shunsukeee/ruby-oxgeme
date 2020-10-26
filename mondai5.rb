a = gets
kazu_tensu = a.split(" ").map{|x|x.to_i}
kazu_tensu[0].times do |num|
    b = gets
    stu_yasu = b.split(" ").map{|x|x.to_i}
    total = stu_yasu[0] - stu_yasu[1] * 5
    if total < 0
        total = 0
    end
    #totalが-なら0にする
    if kazu_tensu[1] <= total
        puts num + 1
        #num+1で1番目から出力
    else
    end
end