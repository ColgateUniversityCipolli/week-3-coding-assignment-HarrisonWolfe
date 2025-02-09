

# All the possible prime numbers
prime.numbers <- 2:100

# Outer loop to iterate over all numbers from 2 to 100
for (i in 2:100) {
  # Inner loop to check divisibility for each number by numbers smaller than itself
  for (x in 2:(i-1)) {
    # If it can be divided by things that are smaller than it than it is not prime so we get rid of everything that can do that
    prime.numbers <- prime.numbers[prime.numbers != i | i %% x != 0]
  }
}


