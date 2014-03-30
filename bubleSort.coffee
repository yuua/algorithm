randFunc = ->
  random = []
  randCnt = 10

  # ランダム生成
  for i in [0..randCnt]
    random[i] = Math.floor Math.random()*100
  random

bubbleSort = (random) -> 
  flg = tmp = 0

  loop
    flg = 0
    for i of random
      i = parseInt i
      if random[i] > random[i+1]
        flg = 1
        tmp = random[i]
        random[i] = random[i+1]
        random[i+1] = tmp
    break if flg == 0
  random

sort = randFunc()
console.log bubbleSort sort
