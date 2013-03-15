def well disks, rings, count
  p disks
  p rings
  return count if (rings.length == 0)
  return count if (disks.length == 0)
  return count if (disks[0] > rings[0])
  return count if (disks[0] > rings[0]) and disks.length > 0
  disks = disks[0..disks.index(disks.max)] if disks.max > rings.min
  well(disks[1..-1], rings[0...(rings.index{ |x| x< disks[0]} || -1)], count+1)
end

f = File.open('in.txt')
p well f.first.split, f.first.split, 0 # print disks count
