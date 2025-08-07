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
history() # history of all typed commands
```

## Operations on data
![alt text](image-13.png)
![alt text](image-14.png)

```r
patient_data[2] # access the 2nd field
patient_data[,c(3,5)]
```
![alt text](image-19.png)
- accessing 2nd row 4th field
![alt text](image-17.png)
- Accessiong specefic row and columns(in order)
![alt text](image-15.png)
- Accessiong specefic row and columns(without specefic order)
![alt text](image-16.png)

- storing values of a field as an array
![alt text](image-20.png)
![alt text](image-21.png)
![alt text](image-22.png)

- using conditions
```r
# finding the avg weight of smokers in given dataset
smokers = patient_data[patient_data$"smoking" == TRUE,]
```
![alt text](image-27.png)
![alt text](image-26.png)
![alt text](image-12.png)

---

![alt text](image-23.png)
![alt text](image-24.png)
![alt text](image-25.png) 
- or
![alt text](image-28.png)

### doing this by importing from excel file

```r
find.package("readxl") # see if installed
install.packages("readxl") # install it
library("readxl")     # load it

sine_data_file = file.choose()
typeof(sine_data_file) #character

sine_data = read_xlsx(sine_data_file)
typeof(sine_data) #list

plot(sine_data$"x",sine_data$"y",type="l")
```
![alt text](image-29.png)
- adding new column
![alt text](image-30.png)
![alt text](image-31.png)

### writing to new data to excel

```r
install.packages("writexl")
library("writexl")
new_file_path = "path/New Data.xlsx"
write_xlsx(sine_data,new_file_path)
```
![alt text](image-32.png)