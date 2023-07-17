import Foundation

//Se requiere calcular el valor neto a pagar a un trabajador (Contratistas y de Planta) en un mes, sabiendo que cada trabajadortiene un sueldo básico y teniendo en cuenta lo siguiente: A todo trabajador de planta, se le debe descontar el 4% del sueldo básico por concepto de salud y el 3.8% del sueldo básico por concepto de pensión. Si el trabajador es de Planta y su sueldo básico es de menos de $ 437.000 se le debe cancelar $ 40.000 adicional por concepto de auxilio de transporte. Si el trabajador es de Planta y devenga mas de $ 1.750.000 de salario básico, se le descontara el 1% del sueldo básico por concepto de Solidaridad Pensional. Si el trabajador es Contratista, se le debe descontar el 10% por concepto de retención en la fuente solamente si su salario es superior a $ 1.500.000.

var valorNeto = 0.0
var sueldoBasico = 1780000.0
var tipoTrabajador = 1 // 1.) Contratista 2.) Planta
print("Sueldo Basico: \(sueldoBasico)")

if tipoTrabajador == 2 && sueldoBasico >= 437000{
    sueldoBasico -= (sueldoBasico * 7.8) / 100
}else if tipoTrabajador == 2 && sueldoBasico < 437000{
    sueldoBasico += 40000
}else if tipoTrabajador == 2 && sueldoBasico < 1750000{
    sueldoBasico -= sueldoBasico * 0.1
}

if tipoTrabajador == 1 && sueldoBasico > 1500000{
    sueldoBasico -= sueldoBasico * 0.10
}

if tipoTrabajador == 1{
    print("Tipo de Trabajador: Contratista")
}else{
    print("Tipo de Trabajador: Planta")
}
print("Sueldo Final: \(sueldoBasico)")
