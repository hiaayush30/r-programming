# R Notes
## Data types
- they are of types: scaler and vector
### Scaler datatypes
- they are 4 types: 
- - double(0.65), 
- - int(10L), 
- - character("SACHIN"), 
- - logical(TRUE,FALSE)
#### Every scaler is treated as a numeric vector if length 1
```r
x <- 5
length(x) #1
```
### Vector datatypes
- multiple scaler datatypes combined
- array, matrix, data frame
- multiple scaler of same type => array
- 2d array => matrix
- matrix but of diffrent scaler types => data frame

![alt text](image.png)
![alt text](image-1.png)

- str() gives you more info about a variable
![alt text](image-2.png)


![alt text](image-3.png)
![alt text](image-4.png)
![alt text](image-5.png)
![alt text](image-6.png)
![alt text](image-7.png)

```r
 rm(list=ls())
 # removes all variables
```

- handling packages
```r
find.package("readxl") # find if you have it
install.packages("readxl") # install it
library(readxl) # load it
```
![alt text](image-9.png)

- this is a data frame:

![alt text](image-10.png)
![alt text](image-11.png)

```r
history() # history all typed commands
```