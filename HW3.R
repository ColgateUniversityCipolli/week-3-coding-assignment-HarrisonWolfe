

# All the possible prime numbers
prime.numbers <- 2:100

# Outer loop to find all numbers from 2 to 100
for (i in 1:100) {
  # Inner loop to check if it can go evenly into each number by numbers smaller than itself
  for (x in 2:(i-1)) {#Loop through everything smaller than i
    # If it can be divided by things that are smaller than it than it is not prime so we get rid of everything that can do that
    prime.numbers = prime.numbers[prime.numbers != i | i %% x != 0]
    #Only doesn't add 2??
  }
}

#Adding 2
prime.numbers = c(prime.numbers, 2)
prime.numbers = sort(prime.numbers)

#Making the products into a vector

num.to.check=c()

for(i in 1:length(prime.numbers)){
  for(x in 1:length(prime.numbers)){
    num.to.check = c(num.to.check, prime.numbers[i]*prime.numbers[x])
    
  }
}

num.to.check = sort(num.to.check)


#Removing the squares and duplicates
num.to.check = unique(num.to.check)

x = 1:100
y = x^2

num.to.check = num.to.check[-which(num.to.check %in% y)]
num.to.check = sort(num.to.check)

#Adding the original problem

original.numbers = c(6 , 10 , 14 , 15 , 21,
                     22 , 26 , 33 , 34 , 35,
                     38 , 39 , 46 , 51 , 55,
                     57 , 58 , 62 , 65 , 69,
                     75 , 77 , 82 , 85 , 86,
                     87 , 91 , 93 , 94 , 95)

#Finding the one that does not belong

original.numbers[-which(original.numbers %in% num.to.check)]

#Finding the one to add back in

num.to.check = num.to.check[which(num.to.check < 100)] #Sorting below 100

num.to.check[-which(num.to.check %in% original.numbers)]


