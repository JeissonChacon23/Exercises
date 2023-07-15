import Foundation

//Realiza la suma de todos los números pares entre 1 y 1000
var sum = 0
for index in 1 ..< 1000{
    if index % 2 == 0{
        sum += index
    }
}
print(sum)
