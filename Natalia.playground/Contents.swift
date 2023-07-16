import Foundation

//Dado un numero entero de cuatro cifras invertirlo
let num = 1234
var op = num / 1000
var aux = num % 1000
var op1 = aux / 100
var aux1 = aux % 100
var op2 = aux1 / 10
var op3 = aux1 % 10
var number = (op3 * 1000) + (op2 * 100) + (op1 * 10) + op
