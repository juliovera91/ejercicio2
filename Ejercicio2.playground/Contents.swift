//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0 , VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}
   

class Auto{
    var velocidad : Velocidades
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado);
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var msj : String = ""
        if self.velocidad == Velocidades.Apagado {
            self.velocidad = Velocidades.VelocidadBaja
            msj = "Velocidad baja"
        }else if self.velocidad == Velocidades.VelocidadBaja {
            msj = "Velocidad media"
            self.velocidad = Velocidades.VelocidadMedia
        }else if self.velocidad == Velocidades.VelocidadMedia {
            self.velocidad = Velocidades.VelocidadAlta
            msj = "Velocidad alta"
        }else if self.velocidad == Velocidades.VelocidadAlta {
            msj = "Velocidad media"
            self.velocidad = Velocidades.VelocidadMedia
        }
        return (self.velocidad.rawValue, msj)
    }
}


var auto : Auto = Auto();
for num in 1...20 {
    var resp = auto.cambioDeVelocidad()
    print("\(resp.0), \(resp.1)")
}