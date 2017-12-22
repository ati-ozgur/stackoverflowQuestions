rnd.numbers <- sample(100,99)

sum(1:100) - sum(rnd.numbers)

rnd.numbers.even <- rnd.numbers[rnd.numbers %% 2 == 0]
rnd.numbers.odd <- rnd.numbers[rnd.numbers %% 2 == 1]

sum(rnd.numbers.odd ) - sum(rnd.numbers.even)
  


