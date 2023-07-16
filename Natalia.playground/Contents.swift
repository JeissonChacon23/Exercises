import Foundation

//
var codigo = 120420
var cif1 = codigo / 100000
var mod1 = codigo % 100000
var cif2 = mod1 / 10000
var mod2 = mod1 % 10000
var cif3 = mod2 / 1000
var mod3 = mod2 % 1000
var cif4 = mod3 / 100
var mod4 = mod3 % 100
var cif5 = mod4 / 10
var cif6 = mod4 % 10

print(" Hermanos: \(cif1)\n Edad: \(cif2*10+cif3)")
if cif4 % 2 == 0{
    print(" Amigos: \(cif4)")
}else{
    print(" Amigas: \(cif4)")
}
if cif5 + cif6 <= 31{
    print(" Dia de Cumpleaños: \(cif5 + cif6)")
}else{
    print("Día de cumpleaños incorrecto")
}
