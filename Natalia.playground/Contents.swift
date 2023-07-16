import Foundation

//Calcular el valor a pagar en un café internet
var valor = 0
var minutos = 320
if minutos <= 15{
    valor = 500
}else if minutos >= 16 && minutos <= 30{
    valor = 1000
}else if minutos >= 31 && minutos <= 60{
    valor = 1400
}else if minutos > 60{
    valor = 20 * minutos
}
