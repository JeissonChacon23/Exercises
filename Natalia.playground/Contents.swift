import Foundation

//Calcular el precio de la venta de minutos
var minutos:Double = 120
var segundos:Double = 60
var valorPagar:Double = 0
if segundos > 30 && segundos <= 60{
    minutos += 1
}
if minutos >= 1 && minutos <= 5{
    valorPagar += 300 * minutos
    print(valorPagar)
}
if minutos > 5 && minutos <= 10{
    valorPagar += (200 * (minutos - 5)) + 1500
}
if minutos > 10{
    valorPagar = (100 * (minutos - 10)) + 1500
}
if valorPagar > 1600{
    valorPagar -= valorPagar * 0.10
}
print(valorPagar)
