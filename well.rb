def well disks, rings, count
  return count if rings.length == 0
  return count if disks.length == 0
  return count if disks[0] > rings[0]
  disks = disks[0..disks.index(disks.max)] if disks.max > rings.min
  well(disks[1..-1], rings[0...(rings.index{ |x| x< disks[0]} || -1)], count+1)
end