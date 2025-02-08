# Define a function 'prime_numbers' that takes a single argument 'n'
prime_numbers <- function(n) {
  

    # Empty Vector
    prime.nums = c()
    
    # Loop through each number in the sequence from 2 to 'n'
    for (i in 2:n) {
      
      # Add the unique values
      if (any(x == i)) {
        
        # Add 'i' to the 'prime_nums' vector
        prime.nums = c(prime.nums, i)
        
        # Get rid of the multiples by removing everyhintg that is a remainder
        x = c(x[(x %% i) != 0], i)
      }
    }
    
    # Return the vector of prime numbers
    return(prime.nums)
  }

primes = prime_numbers(100)


output  = outer(primes, primes, FUN = "*")

primes.vector = c(as.matrix(output))

x = (1:100)

squares = x^2

numbers.to.check = primes.vector[-which(primes.vector %in% squares)]


original.numbers = c(6, 10, 14, 15, 21, 22, 26, 33, 34, 35, 38, 39, 46, 51, 55, 57, 58, 62, 65, 69, 75, 77, 82, 85, 86, 87, 91, 93, 94, 95)


numbers.to.check = numbers.to.check[which(numbers.to.check == any(duplicated(numbers.to.check, incomparables = FALSE)))]

(number.that.does.not.belong = original.numbers[-which(original.numbers %in% numbers.to.check)])

(number.that.should.be.there.instead = numbers.to.check[-which(numbers.to.check %in% original.numbers)])

(number.that.should.be.there.instead = number.that.should.be.there.instead[which(number.that.should.be.there.instead < 100)])
