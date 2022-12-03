#
v1 <- c(11, 12, 15, 18)

#
m1 <- matrix(11:18,nrow=2,ncol=4) 

# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
result

# Create three vectors of equal lengths.
v1 <- c("001","002","003","004","005")
v2 <- c(11, 12, 15, 18,20)
v3 <- c("Yes","NO","Yes","NO","NO")
# Take these vectors as columns to the data frame.
data1 <- data.frame(v1,v2,v3)


# Create Two vectors 
u1 <- 1:5
u2 <- c(T,T,F,F,T)
# Take these vectors as input to the list.
mylist <- list(numbers=u1, wrong=u2)

