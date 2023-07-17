import Foundation

//El gobierno del estado de México desea reforestar un bosque que mide determinado número de metros cuadrados. Si la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la siguiente manera: Porcentaje de la superficie del bosque Tipo de árbol 70% pino 20% oyamel 10% cedro Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la siguiente manera: Porcentaje de la superficie del bosque Tipo de árbol 50% pino 30% oyamel 20% cedro El gobierno desea saber el numero de pinos, oyameles y cedros que tendrá que sembrar en el bosque, si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 oyameles y en 18 metros cuadrados caben 10 cedros.

var area = 10000000.0
var pino = 0.0
var oyamel = 0.0
var cedro = 0.0
if area > 1000000{
    pino += ((area * 0.70) / 10) / 8      //70%
    oyamel += ((area * 0.20) / 15) / 15   //20%
    cedro += ((area * 0.10) / 18) / 10    //10%
}else{
    pino += ((area * 0.50) / 10) / 8      //50%
    oyamel += ((area * 0.30) / 15) / 15   //30%
    cedro += ((area * 0.20) / 18) / 10    //20%
}
