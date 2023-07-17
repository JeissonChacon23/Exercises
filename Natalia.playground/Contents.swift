import Foundation

//En la ciudad de Pamplona se va a realizar un concierto por el dia de amor y amistad todas las boletas están identificadas con un numero de 6 cifras, que esta compuesto de la siguiente forma: Si la suma del primer y el último digito es mayor que el digito cinco la boleta es valida, en caso contrario no es valida.El segundo Digito determina el tipo de Boleta según la siguiente tablaTipo de Entrada De 1 a 5 GramillaDe 6 a 9 incluyendo 0 GeneralEl numero que forma el tercer y cuarto digito determina la hora y la puerta de entrada al evento según la siguiente tabla Si es par Puerta 1 a partir de las 7 pm Si es impar Puerta 2 a partir de las 8 pm Analice y diseñe un algoritmo donde se ingrese el numero de una boleta y posteriormente determine: Si la boleta es valida, el tipo de boleta y la puerta y horario al cual debe ingresar el espectador.

var codigo = 437952
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

if cif1 + cif6 > cif5{
    print("Voleta Valida")
    if cif2 >= 1 && cif2 <= 5{
        print("Tipo de Entrada: Gramilla")
    }else{
        print("Tipo de Entrada: General")
    }
    
    if ((cif3 * 100) + cif4) % 2 == 0{
        print("Puerta: 1 \nHora: 19:00")
    }else{
        print("Puerta: 2 \nHora: 20:00")
    }
    
}else{
    print("Voleta Invalida")
}
