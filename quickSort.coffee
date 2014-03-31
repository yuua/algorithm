randFunc = ->
  random = []
  randCnt = 10
  keta = 100
  for i in [0..randCnt]
    random[i] = Math.floor Math.random()*keta
  random

quickSort = (bottom,top,random) ->
  return if bottom >= top
  temp = null
  div = random[bottom] #先頭を適当な値に
  lower = bottom
  upper = top
  
  while lower < upper
    while lower <= upper && random[lower] <= div
      lower++
    while lower <= upper && random[upper] > div
      upper--
    
    if lower < upper
      temp = random[lower]
      random[lower] = random[upper]
      random[upper] = temp
  
  temp = random[bottom]
  random[bottom] = random[upper]
  random[upper] = temp

  quickSort(bottom,upper-1,random)
  quickSort(upper+1,top,random)
  
  random

sort = randFunc()
console.log quickSort(0,sort.length-1,sort)
