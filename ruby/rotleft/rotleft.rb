def rotLeft(a, d)
  d.times do
    shift = a.shift
    a.push(shift)
  end
  return a
end

a = [1,2,3,4,5]
d = 4

p rotLeft(a,d)
