def well disks, rings, count
  p disks
  p rings
  return count if (rings.length == 0)
  return count if (disks.length == 0)
  return count if (disks[0] > rings[0])
  return count if (disks[0] > rings[1].to_i) and (disks.length == 0)
  rings = rings[0...rings.index(rings.min)] if disks.min > rings.min
  disks = disks[0..(disks.count(disks.max) > 1 ? disks.length - disks.reverse.index(disks.max) - 1 : disks.index(disks.max))] if disks.max > rings.min
  well(disks[1..-1], rings[0...(rings.index{ |x| x < disks[0]} || -1)], count+1)
end

f = File.open('in.txt')
p well f.first.split.map{|x| x.to_i}, f.first.split.map{|x| x.to_i}, 0 # print disks count
