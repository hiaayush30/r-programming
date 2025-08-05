print("Hello world")
name <- "Aayush"
print(name)

function myRectangle (num_rows,num_cols,symbol){
     i=0
     while(i<num_rows){
        j=0
        while(j<num_cols){
           if(i==0 || j==0 || j == num_cols-1 || i == num_rows-1){
                   cat(symbol)     
           }
           else {
             print(" ")
           }
        }
        cat("\n")
     }
}

myRectangle(3,4,"*")

