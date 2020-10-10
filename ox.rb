s="123\r\n456\r\n789\r\n"
9.times do |i|
	print s
	j=i%2
	ox=if j==0 then "o" else "x" end
	print "#{ox}: doko?"
	k=gets.strip
	s.gsub!(/#{k}/, ox)
end
gets