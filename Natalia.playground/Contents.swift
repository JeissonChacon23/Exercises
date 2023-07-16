import Foundation

//Calcular el valor de una matricula
var codigo = 12345
var cif1 = codigo / 10000
var mod1 = codigo % 10000
var cif2 = mod1 / 1000
var mod2 = mod1 % 1000
var cif3 = mod2 / 100
var mod3 = mod2 % 100
var cif4 = mod3 / 10
var cif5 = mod3 % 10
var valorMatricula:Double = 0
if cif1 == 1 {
    valorMatricula += 300000
}else if cif1 == 2{
    valorMatricula += 150000
}else if(cif1 == 3){
    valorMatricula += 100000
}
if cif2 == 1{
    valorMatricula += valorMatricula * 0.5
}else{
    valorMatricula += valorMatricula * 0.10
}

if ((cif3 * 100) + (cif4 * 10) + cif5) % 2 == 0{
    valorMatricula -= valorMatricula * 0.20
}else{
    valorMatricula -= valorMatricula * 0.10
}
