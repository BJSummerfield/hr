def minimumBribes(q)
  bribes = 0
  q.length.times do |i|
    personBribes = 0
    (q.length-i).times do |j|
      personBribes += 1 if q[i] > q[i + j]
       p "Too chaotic" if personBribes > 2
    end
    bribes += personBribes
  end
  p bribes
end

q = [1,2,3,5,6,7,8,9,10,4]

p minimumBribes([2,5,1,3,4])
