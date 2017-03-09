//
//  MasaInterfaceController.swift
//  Pizzas2
//
//  Created by David Osses Mena on 08-03-17.
//  Copyright © 2017 David Osses Mena. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {

    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingrediente1: String = ""
    var ingrediente2 : String = ""
    var ingrediente3 : String = ""
    var ingrediente4 : String = ""
    var ingrediente5 : String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c = context as! Valores
        tamaño = c.tamaño
        masa = c.masa
        queso = c.queso
        ingrediente1 = c.ingrediente1
        ingrediente2 = c.ingrediente2
        ingrediente3 = c.ingrediente3
        ingrediente4 = c.ingrediente4
        ingrediente5 = c.ingrediente5
        
        // Configure interface objects here.
    }
    
    @IBAction func delgada() {
        masa = "Delgada"
        let valorContexto = Valores(t: tamaño, m: masa, q: queso, i1: ingrediente1, i2: ingrediente2, i3: ingrediente3, i4: ingrediente4, i5: ingrediente5)
        pushController(withName: "quesoIdentificador", context: valorContexto)

    }
    @IBAction func crujiente() {
        masa = "Crujiente"
        let valorContexto = Valores(t: tamaño, m: masa, q: queso, i1: ingrediente1, i2: ingrediente2, i3: ingrediente3, i4: ingrediente4, i5: ingrediente5)
        pushController(withName: "quesoIdentificador", context: valorContexto)
    }
    @IBAction func gruesa() {
        masa = "Gruesa"
        let valorContexto = Valores(t: tamaño, m: masa, q: queso, i1: ingrediente1, i2: ingrediente2, i3: ingrediente3, i4: ingrediente4, i5: ingrediente5)
        pushController(withName: "quesoIdentificador", context: valorContexto)
    }
    @IBAction func finalizar() {
        let valorContexto = Valores(t: tamaño, m: masa, q: queso, i1: ingrediente1, i2: ingrediente2, i3: ingrediente3, i4: ingrediente4, i5: ingrediente5)
        pushController(withName: "confirmaciónIdentificador", context: valorContexto)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
