#Code by Caitlin Diddams for "Textual Analysis with R For Humanists," SUNY Buffalo April 18 2014
# Operations

  #Expressions
    # from command line

1+1

"hello world"

(10*5)/2

  # Logical values (Boolean)

5<6
x=10
5+5==10

# Objects

x<-42

x/2

x<-"hello world"

help(sum)

?help
sum(1,2,3)

  #Vectors

c(1,2,3)

c("a", "b", "c")

sentence<-c("hello", "world")

sentence[2]

sentence[3]<-"!"

a<-c(1,2,NA,3)

sum(a)

sum(a, na.rm = TRUE)

  #Functions

f<-function(x,y){x+y}
f(2,3)

f<-function(x, y) {
  z1 <- 2*x + y
  z2 <- x + 2*y
  z3 <- 2*x + 2*y
  z4 <- x/y
  return(c(z1, z2, z3, z4))
}


    #scan
cat <- scan("carroll_alice.txt", what = "character")
head(cat)
#cat<-scan("catullus_adcornelium.txt", what = "character", sep = "")

    #length
length(cat)

    #which
which(cat=="alice")
which(cat=="the")
length(which(cat=="alice"))

#unique
unicat <- unique(cat)

    #loops

#for (i in unicat) {print (i)}

words <- c()
freqs <- c()
position <- 1
x <- cat

for (i in unique(x)) {
  current.word <- which(x==i)
  frequencies <- length(current.word)/length(x)
  freqs[position]<-frequencies
  words[position]<-i
  position<-position + 1
}

# Data Frames
df <- data.frame(words, freqs, stringsAsFactors=FALSE)
head(df)

# Bar Plot
barplot(freqs, names=words)

  #sorting results
sortedfrequencies <- order(df$freqs, decreasing = TRUE)
sorteddf <- df[sortedfrequencies,]
head(sorteddf)

with(sorteddf, barplot(freqs, names=words))

