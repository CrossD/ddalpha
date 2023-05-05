library(ddalpha)

set.seed(1)
data <- mvrnorm(200, rep(0, 3), 
                matrix(c(1, 0, 0,
                         0, 2, 0, 
                         0, 0, 1),
                       nrow = 3))
x <- matrix(c(-10, 0, 0,
              0, 10, 0), 2, 3, byrow=TRUE)

# default - random Tukey depth
depths0 <- depth.halfspace(x, data)

# Note the 2nd observation is no longer extreme
depths1 <- depth.signed.halfspace(x, data, sign=c(0, -1, 0))

# Note the 1st observation is no longer extreme
depths2 <- depth.signed.halfspace(x, data, sign=c(1, 0, 0))

