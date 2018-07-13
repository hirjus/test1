# treeni2 - datatyypit, konversiot, metadata
# 7.4.2018 opk

#http://nicercode.github.io/2014-02-18-UTS/lessons/01-intro_r/data-structures.html

typeof() # what is it?
class() # what is it? (sorry)
storage.mode() # what is it? (very sorry)
length() # how long is it? What about two dimensional objects?
attributes() # does it have any metadata?



#Vektorin kaikki elementit samaa tyyppiä →
#“R will create a resulting vector that is the least common denominator. The coercion will move towards the one that's easiest to coerce to.” Implisiittinen konversio.
#logical → integer → numeric → complex → character

xx <- c(1.7, "a")
xx
xx <- c(TRUE, 2)
xx
xx <- c("a", TRUE)
xx

#meneekö järjestyksessä 1. alkiosta alkaen? Ei, vaan tuossa järjestyksessä.
xx <- c(2, TRUE)
xx

#Matriisit - vektori ja dimensiot
m <- matrix(nrow = 4, ncol = 4)
m
dim(m)
typeof(m) # what is it?
class(m) # what is it? (sorry)
storage.mode(m) # what is it? (very sorry)
length(m) # how long is it? What about two dimensional objects?
attributes(m) # does it have any metadata?

# rakennetaan sarakkeittan ("sisäisesti peräkkäin")
m <- matrix(1:6, nrow = 2, ncol = 3)
m

#myös näin
m <- 1:10
m
dim(m) <- c(2,5)
m
# cbind ja rbind
x <- 1:3
y <- 10:12
(cbind(x,y))
(rbind(x,y))
