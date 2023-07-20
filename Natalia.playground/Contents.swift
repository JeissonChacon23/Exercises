import Foundation

//Calcular el salario final a pagar a un empleado a quien se le paga a X pesos la hora trabajada. Se hace un descuento de acuerdoa la siguiente tabla comparativa con el salario minimo (dado por teclado) si el salario esta entre Descuento 1 y 2 (incluido) salarios minimos 5% 2 y 6 (incluido) salarios minimos 7% Mas de 6 salarios minimos 10% En caso de que el salario sea menor a un salario minimo se le dara una bonificacion de 20.000 pesos.

var salarioMinimo:Double = 1300000
var hora:Double = 192
var precioHora:Double = 15000
var salario:Double = hora * precioHora

if salario >= salarioMinimo && salario <= salarioMinimo * 2{
    salario -= salario * 0.05
}
if salario > salarioMinimo * 2 && salario <= salarioMinimo * 6{
    salario -= salario * 0.07
}
if salario > salarioMinimo * 6{
    salario -= salario * 0.10
}
if salario < salarioMinimo{
    salario += 20000
}
