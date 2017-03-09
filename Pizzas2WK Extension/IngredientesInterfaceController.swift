//
//  IngredientesInterfaceController.swift
//  Pizzas2
//
//  Created by David Osses Mena on 08-03-17.
//  Copyright © 2017 David Osses Mena. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingrediente1: String = ""
    var ingrediente2 : String = ""
    var ingrediente3 : String = ""
    var ingrediente4 : String = ""
    var ingrediente5 : String = ""
    
    var ingredienteLocal1: String = ""
    var ingredienteLocal2 : String = ""
    var ingredienteLocal3 : String = ""
    var ingredienteLocal4 : String = ""
    var ingredienteLocal5 : String = ""

    @IBOutlet var ingrediente1L: WKInterfaceLabel!
    @IBOutlet var ingrediente2L: WKInterfaceLabel!
    @IBOutlet var ingrediente3L: WKInterfaceLabel!
    @IBOutlet var ingrediente4L: WKInterfaceLabel!
    @IBOutlet var ingrediente5L: WKInterfaceLabel!
    
    
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
    @IBAction func borrarI1() {
        ingredienteLocal1 = ""
        ingrediente1L.setText(ingredienteLocal1)
    }
    @IBAction func borrarI2() {
        ingredienteLocal2 = ""
        ingrediente2L.setText(ingredienteLocal2)
    }
    @IBAction func borrarI3() {
        ingredienteLocal3 = ""
        ingrediente3L.setText(ingredienteLocal3)
    }
    @IBAction func borrarI4() {
        ingredienteLocal4 = ""
        ingrediente4L.setText(ingredienteLocal4)
    }
    @IBAction func borrarI5() {
        ingredienteLocal5 = ""
        ingrediente5L.setText(ingredienteLocal5)
    }
    
    @IBAction func jamon() {
        
        if ingredienteLocal1 == "" {
            ingredienteLocal1 = "Jamón"
        }else if ingredienteLocal2 == ""{
            ingredienteLocal2 = "Jamón"
        }else if ingredienteLocal3 == ""{
            ingredienteLocal3 = "Jamón"
        }else if ingredienteLocal4 == ""{
            ingredienteLocal4 = "Jamón"
        }else if ingredienteLocal5 == ""{
            ingredienteLocal5 = "Jamón"
        }
        
        ingrediente1L.setText(ingredienteLocal1)
        ingrediente2L.setText(ingredienteLocal2)
        ingrediente3L.setText(ingredienteLocal3)
        ingrediente4L.setText(ingredienteLocal4)
        ingrediente5L.setText(ingredienteLocal5)
        
    }
    @IBAction func pavo() {
        if ingredienteLocal1 == "" {
            ingredienteLocal1 = "Pavo"
        }else if ingredienteLocal2 == ""{
            ingredienteLocal2 = "Pavo"
        }else if ingredienteLocal3 == ""{
            ingredienteLocal3 = "Pavo"
        }else if ingredienteLocal4 == ""{
            ingredienteLocal4 = "Pavo"
        }else if ingredienteLocal5 == ""{
            ingredienteLocal5 = "Pavo"
        }
        
        ingrediente1L.setText(ingredienteLocal1)
        ingrediente2L.setText(ingredienteLocal2)
        ingrediente3L.setText(ingredienteLocal3)
        ingrediente4L.setText(ingredienteLocal4)
        ingrediente5L.setText(ingredienteLocal5)
    }
    @IBAction func tocino() {
        if ingredienteLocal1 == "" {
            ingredienteLocal1 = "Tocino"
        }else if ingredienteLocal2 == ""{
            ingredienteLocal2 = "Tocino"
        }else if ingredienteLocal3 == ""{
            ingredienteLocal3 = "Tocino"
        }else if ingredienteLocal4 == ""{
            ingredienteLocal4 = "Tocino"
        }else if ingredienteLocal5 == ""{
            ingredienteLocal5 = "Tocino"
        }
        
        ingrediente1L.setText(ingredienteLocal1)
        ingrediente2L.setText(ingredienteLocal2)
        ingrediente3L.setText(ingredienteLocal3)
        ingrediente4L.setText(ingredienteLocal4)
        ingrediente5L.setText(ingredienteLocal5)
    }
    @IBAction func aceituna() {
        if ingredienteLocal1 == "" {
            ingredienteLocal1 = "Aceituna"
        }else if ingredienteLocal2 == ""{
            ingredienteLocal2 = "Aceituna"
        }else if ingredienteLocal3 == ""{
            ingredienteLocal3 = "Aceituna"
        }else if ingredienteLocal4 == ""{
            ingredienteLocal4 = "Aceituna"
        }else if ingredienteLocal5 == ""{
            ingredienteLocal5 = "Aceituna"
        }
        
        ingrediente1L.setText(ingredienteLocal1)
        ingrediente2L.setText(ingredienteLocal2)
        ingrediente3L.setText(ingredienteLocal3)
        ingrediente4L.setText(ingredienteLocal4)
        ingrediente5L.setText(ingredienteLocal5)
    }
    @IBAction func pepperoni() {if ingredienteLocal1 == "" {
        ingredienteLocal1 = "Pepperoni"
    }else if ingredienteLocal2 == ""{
        ingredienteLocal2 = "Pepperoni"
    }else if ingredienteLocal3 == ""{
        ingredienteLocal3 = "Pepperoni"
    }else if ingredienteLocal4 == ""{
        ingredienteLocal4 = "Pepperoni"
    }else if ingredienteLocal5 == ""{
        ingredienteLocal5 = "Pepperoni"
        }
        
        ingrediente1L.setText(ingredienteLocal1)
        ingrediente2L.setText(ingredienteLocal2)
        ingrediente3L.setText(ingredienteLocal3)
        ingrediente4L.setText(ingredienteLocal4)
        ingrediente5L.setText(ingredienteLocal5)
    }
    @IBAction func pimiento() {
        if ingredienteLocal1 == "" {
            ingredienteLocal1 = "Pimiento"
        }else if ingredienteLocal2 == ""{
            ingredienteLocal2 = "Pimiento"
        }else if ingredienteLocal3 == ""{
            ingredienteLocal3 = "Pimiento"
        }else if ingredienteLocal4 == ""{
            ingredienteLocal4 = "Pimiento"
        }else if ingredienteLocal5 == ""{
            ingredienteLocal5 = "Pimiento"
        }
        
        ingrediente1L.setText(ingredienteLocal1)
        ingrediente2L.setText(ingredienteLocal2)
        ingrediente3L.setText(ingredienteLocal3)
        ingrediente4L.setText(ingredienteLocal4)
        ingrediente5L.setText(ingredienteLocal5)
    }
    @IBAction func anchoa() {
        if ingredienteLocal1 == "" {
            ingredienteLocal1 = "Anchoa"
        }else if ingredienteLocal2 == ""{
            ingredienteLocal2 = "Anchoa"
        }else if ingredienteLocal3 == ""{
            ingredienteLocal3 = "Anchoa"
        }else if ingredienteLocal4 == ""{
            ingredienteLocal4 = "Anchoa"
        }else if ingredienteLocal5 == ""{
            ingredienteLocal5 = "Anchoa"
        }
        
        ingrediente1L.setText(ingredienteLocal1)
        ingrediente2L.setText(ingredienteLocal2)
        ingrediente3L.setText(ingredienteLocal3)
        ingrediente4L.setText(ingredienteLocal4)
        ingrediente5L.setText(ingredienteLocal5)
    }
    @IBAction func pina() {
        if ingredienteLocal1 == "" {
            ingredienteLocal1 = "Piña"
        }else if ingredienteLocal2 == ""{
            ingredienteLocal2 = "Piña"
        }else if ingredienteLocal3 == ""{
            ingredienteLocal3 = "Piña"
        }else if ingredienteLocal4 == ""{
            ingredienteLocal4 = "Piña"
        }else if ingredienteLocal5 == ""{
            ingredienteLocal5 = "Piña"
        }
        
        ingrediente1L.setText(ingredienteLocal1)
        ingrediente2L.setText(ingredienteLocal2)
        ingrediente3L.setText(ingredienteLocal3)
        ingrediente4L.setText(ingredienteLocal4)
        ingrediente5L.setText(ingredienteLocal5)
    }
    @IBAction func cebolla() {
        if ingredienteLocal1 == "" {
            ingredienteLocal1 = "Cebolla"
        }else if ingredienteLocal2 == ""{
            ingredienteLocal2 = "Cebolla"
        }else if ingredienteLocal3 == ""{
            ingredienteLocal3 = "Cebolla"
        }else if ingredienteLocal4 == ""{
            ingredienteLocal4 = "Cebolla"
        }else if ingredienteLocal5 == ""{
            ingredienteLocal5 = "Cebolla"
        }
        
        ingrediente1L.setText(ingredienteLocal1)
        ingrediente2L.setText(ingredienteLocal2)
        ingrediente3L.setText(ingredienteLocal3)
        ingrediente4L.setText(ingredienteLocal4)
        ingrediente5L.setText(ingredienteLocal5)
    }
    @IBAction func salchicha() {
        if ingredienteLocal1 == "" {
            ingredienteLocal1 = "Salchicha"
        }else if ingredienteLocal2 == ""{
            ingredienteLocal2 = "Salchicha"
        }else if ingredienteLocal3 == ""{
            ingredienteLocal3 = "Salchicha"
        }else if ingredienteLocal4 == ""{
            ingredienteLocal4 = "Salchicha"
        }else if ingredienteLocal5 == ""{
            ingredienteLocal5 = "Salchicha"
        }
        
        ingrediente1L.setText(ingredienteLocal1)
        ingrediente2L.setText(ingredienteLocal2)
        ingrediente3L.setText(ingredienteLocal3)
        ingrediente4L.setText(ingredienteLocal4)
        ingrediente5L.setText(ingredienteLocal5)
    }
    @IBAction func finalizar() {
        ingrediente1 = ingredienteLocal1
        ingrediente2 = ingredienteLocal2
        ingrediente3 = ingredienteLocal3
        ingrediente4 = ingredienteLocal4
        ingrediente5 = ingredienteLocal5
        let valorContexto = Valores(t: tamaño, m: masa, q: queso, i1: ingrediente1, i2: ingrediente2, i3: ingrediente3, i4: ingrediente4, i5: ingrediente5)
        pushController(withName: "comprobaciónIdentificador", context: valorContexto)
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
