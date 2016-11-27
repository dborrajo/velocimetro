//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init( ) {
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        
        let retorno : (Int, String)
        
        retorno.0 = self.velocidad.rawValue
        
        switch self.velocidad {
        case .Apagado:
            self.velocidad = .VelocidadBaja
            retorno.1 = "Apagado"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            retorno.1 = "Velocidad baja"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            retorno.1 = "Velocidad media"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            retorno.1 = "Velocidad alta"
            
        }
        
        return retorno
    }
}


let auto = Auto()
for i in 0...20{
    let toPrint = auto.cambioDeVelocidad()
    
    print("\(toPrint.actual), \(toPrint.velocidadEnCadena)")
}

