import Foundation

//En central de abastos de Pamplona (bodegas donde se almacena al por mayor) se ha establecido un mecanismo para el ingresode vehículos que permite el cobro de parqueadero según las siguientes condiciones: Al centro de abastos entran vehículos con dos propósitos, algunos entran a descargar productos y otros entran a cargar (estos son los dos tipos de servicio que presta el centro de abastos 1. Cargue y 2.descargue). A los vehículos que entran a descargar se les cobra de acuerdo a la siguiente tabla Peso transportado Tipo de producto Menos de 10 toneladas 10 o mas toneladas 1. Perecedero 10000 pesos por tonelada 7000 pesos por tonelada 2. No perecedero 50000 pesos por todo el producto transportado 50000 por las primeras 10 toneladas y a 5000 pesos cada tonelada que exceda de 10 A los vehículos que entran a cargar se les cobra por el tiempo que permanecen dentro del centro de abastos asi: Las primeras dos horas son gratis para todos los vehiculos que entran a cargar. Las horas extras que permanecen dentro del parqueadero se cobran a 2000 pesos la hora (siempre se cobra la hora completa) y tendrá un incremento del 25% si elcamion mide mas de 4 metros de largo. Hacer el analisis y diseno de un algoritmo que ayude al portero del centro de abastos para calcular el costo de parqueadero de unode los camiones que hace uso de estos servicios.

var tipoServicio = 2 // 1.) Descargar o 2.) Cargar
var precio:Double = 0

if tipoServicio == 1{
    var productoPerecedero:Double = 3
    var productoNoPerecedero:Double = 5
    var pesoTransportado = productoPerecedero + productoNoPerecedero //Cantidad de peso en toneladas
    if pesoTransportado <= 10{
        precio += productoPerecedero * 10000
        if productoNoPerecedero != 0{
            precio += 50000
        }
    }else{
        precio = productoPerecedero * 7000
        if (productoNoPerecedero > 10){
            precio += ((productoNoPerecedero - 10) * 5000) + 50000
        }else{
            precio += 50000
        }
    }
}

if tipoServicio == 2{
    var tiempoParqueo:Double = 3
    var largovehiculo:Double = 5
    if tiempoParqueo > 2{
        precio = (tiempoParqueo - 2) * 2000
    }
    if largovehiculo > 4{
        precio += precio * 0.25
    }
}
