library (swirl)
swirl()
Bridgetbrowning
2
ls()
list.files()
?list.files
args()
args(list.files)
old.dir
testdir
setwd("testdir")
file.create("mytest.R")
file.exists()
file.copy("mytest2.R","mytest3.R")
file.path("mytest3.R")
file.path("folder1 and folder2")
3
length()
rep()
rep(c(0, 1, 2), each =10)
c(44, NA, 5, NA) <- x
x[-c(2,10)]
vect <- c(foo =11, bar = 2, norf = NA)
vect
names()
names(vect)
info()
skip()
identical(vect, vect2)
vect["bar"]
vect[c("foo","bar")]
my_vector <- 1:20
dim(my_vector)?
class(my_vector)
my_matrix
TRUE == TRUE
FALSE & FALSE
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
5 > 8 || 6 != 8 && 4 >
  3.9
identical("twins", "twins")
xor(5 == 6, !FALSE)
ints <- sample(10)
which(ints > 7)
any(ints < 0)
isTRUE(6>4)
all(ints > 0)
Sys.Date()
mean(c(2,4,5))
boring_function("My first function!")
boring_function
sum(my_vector)/length(my_vector)
my_mean(c(4,5,10))
num %% divisor

func(dat)
evaluate(sd, c(1.4, 3.6, 7.9, 8.8))
evaluate(function(x){x+1}, 6)
evaluate(function(x){x[1]}, c(8, 4, 0))
evaluate(function(x){x[length(x)]}, c(8, 4, 0))
?paste
paste("Programming", "is", "fun!")
paste("START", ..., "STOP")
telegram("START Good morning STOP")
paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
mad_libs(adjective = "", place = "", noun = "")
"%p%" <- function(left, right){ # Remember to add arguments!
  paste(left, right)
  plot(x=cars$speed, y=cars$dist)
  plot(x = cars$speed, y = cars$dist, xlab ="Speed"
  plot(x = cars$speed, y = cars$dist, ylab ="Stopping Distance")
  plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance")
  plot(cars, main = "My Plot")
  plot(cars, sub = "My Plot Subtitle")
  plot(cars, col = 2)
  plot(cars, xlim = c(10, 15))
  plot(cars, pch =2)
  boxplot(formula = mpg ~ cyl, data = mtcars)
  
  setwd('Task_02')
  