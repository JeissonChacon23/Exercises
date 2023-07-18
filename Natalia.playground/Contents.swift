import Foundation

//Calcular el valor a pagar de la factura del celular conociendo el tipo de plan, los minutos y la cantidad de mensajes de texto consumidos en el mes, segun la siguiente tabla: Tipo de plan Minutos Básicos Mensajes T Básicos Cargo Básico 1. Ideal 100 10 80.000 2. Extensión 135 20 120.000 3. Familiar 425 30 180.000 Cada minuto extra tiene un costo de 855 pesos y los mensajes de texto un costo de 370 pesos (Para cualquier plan)
var valor = 0
var minuto = 0
var mensaje = 0
var planIdeal = [100, 10, 80000]
var planExtension = [135, 20, 120000]
var planFamiliar = [425, 30, 180000]
var tipoPlan = planFamiliar
var consumo = [426, 20, 80000]

if tipoPlan.elementsEqual(planIdeal) && (consumo[0] > 100 || consumo[1] > 10){
    valor += planIdeal[2]
    if consumo[0] > 100{
        valor += ((consumo[0] - planIdeal[0]) * 855)
    }
    if consumo[1] > 10{
        valor += ((consumo[1] - planIdeal[1]) * 370)
    }
}else if tipoPlan.elementsEqual(planIdeal) && consumo[0] <= 100 && consumo[1] <= 10{
    valor += planIdeal[2]
}
if tipoPlan.elementsEqual(planExtension) && (consumo[0] > 135 || consumo[1] > 20){
    valor += planExtension[2]
    if consumo[0] > 135{
        valor += ((consumo[0] - planExtension[0]) * 855)
    }
    if consumo[1] > 20{
        valor += ((consumo[1] - planExtension[1]) * 370)
    }
}else if tipoPlan.elementsEqual(planExtension) && consumo[0] <= 135 && consumo[1] <= 20{
    valor += planExtension[2]
}
if tipoPlan.elementsEqual(planFamiliar) && (consumo[0] > 425 || consumo[1] > 30){
    valor += planFamiliar[2]
    if consumo[0] > 425{
        valor += ((consumo[0] - planFamiliar[0]) * 855)
    }
    if consumo[1] > 30{
        valor += ((consumo[1] - planFamiliar[1]) * 370)
    }
}else if tipoPlan.elementsEqual(planFamiliar) && consumo[0] <= 425 && consumo[1] <= 30{
    valor += planFamiliar[2]
}
valor

