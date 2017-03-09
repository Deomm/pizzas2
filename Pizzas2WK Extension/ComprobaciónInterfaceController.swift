//
//  ComprobaciónInterfaceController.swift
//  Pizzas2
//
//  Created by David Osses Mena on 08-03-17.
//  Copyright © 2017 David Osses Mena. All rights reserved.
//

import WatchKit
import Foundation


class ComprobaciónInterfaceController: WKInterfaceController {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingrediente1: String = ""
    var ingrediente2 : String = ""
    var ingrediente3 : String = ""
    var ingrediente4 : String = ""
    var ingrediente5 : String = ""
    
    var tamañoLocal : String = ""
    var masaLocal : String = ""
    var quesoLocal : String = ""
    var ingredienteLocal1: String = ""
    var ingredienteLocal2 : String = ""
    var ingredienteLocal3 : String = ""
    var ingredienteLocal4 : String = ""
    var ingredienteLocal5 : String = ""
    
    var tamañoB : Bool = false
    var masaB : Bool = false
    var quesoB : Bool = false
    var ingredienteB1: Bool = false
    var ingredienteB2 : Bool = false
    var ingredienteB3 : Bool = false
    var ingredienteB4 : Bool = false
    var ingredienteB5 : Bool = false
    var ingredientesB : Bool = false

    @IBOutlet var tamañoL: WKInterfaceLabel!
    @IBOutlet var masaL: WKInterfaceLabel!
    @IBOutlet var quesoL: WKInterfaceLabel!
    @IBOutlet var ingrediente1L: WKInterfaceLabel!
    @IBOutlet var ingrediente2L: WKInterfaceLabel!
    @IBOutlet var ingrediente3L: WKInterfaceLabel!
    @IBOutlet var ingrediente4L: WKInterfaceLabel!
    @IBOutlet var ingrediente5L: WKInterfaceLabel!
    @IBOutlet var comprarB: WKInterfaceButton!
    
    @IBOutlet var alerta: WKInterfaceLabel!
    
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
        
        tamañoL.setText(tamaño)
        masaL.setText(masa)
        quesoL.setText(queso)
        ingrediente1L.setText(ingrediente1)
        ingrediente2L.setText(ingrediente2)
        ingrediente3L.setText(ingrediente3)
        ingrediente4L.setText(ingrediente4)
        ingrediente5L.setText(ingrediente5)
        
        masaLocal = masa
        tamañoLocal = tamaño
        quesoLocal = queso
        ingredienteLocal1 = ingrediente1
        ingredienteLocal2 = ingrediente2
        ingredienteLocal3 = ingrediente3
        ingredienteLocal4 = ingrediente4
        ingredienteLocal5 = ingrediente5
        // Configure interface objects here.
    }
    @IBAction func cambiarTamaño() {
        let valorContexto = Valores(t: tamaño, m: masa, q: queso, i1: ingrediente1, i2: ingrediente2, i3: ingrediente3, i4: ingrediente4, i5: ingrediente5)
        pushController(withName: "tamañoIdentificador", context: valorContexto)
    }
    @IBAction func cambiarMasa() {
        let valorContexto = Valores(t: tamaño, m: masa, q: queso, i1: ingrediente1, i2: ingrediente2, i3: ingrediente3, i4: ingrediente4, i5: ingrediente5)
        pushController(withName: "masaIdentificador", context: valorContexto)
    }
    @IBAction func cambiarQueso() {
        let valorContexto = Valores(t: tamaño, m: masa, q: queso, i1: ingrediente1, i2: ingrediente2, i3: ingrediente3, i4: ingrediente4, i5: ingrediente5)
        pushController(withName: "quesoIdentificador", context: valorContexto)
    }
    @IBAction func cambiarIngrediente() {
        let valorContexto = Valores(t: tamaño, m: masa, q: queso, i1: ingrediente1, i2: ingrediente2, i3: ingrediente3, i4: ingrediente4, i5: ingrediente5)
        pushController(withName: "ingredientesIdentificador", context: valorContexto)
    }
    @IBAction func comprar() {
        
        
        if quesoLocal == ""{
         
            quesoB = false
        }else{
            quesoB = true
        }
        if masaLocal == ""{
            
            masaB = false
        }else{
            masaB = true
        }
        if tamañoLocal == ""{
            
            tamañoB = false
        }else{
            tamañoB = true
        }
        if ingredienteLocal1 == ""{
            
            ingredienteB1 = false
        }else{
            ingredienteB1 = true
        }
        if ingredienteLocal2 == ""{
            
            ingredienteB2 = false
        }else{
            ingredienteB2 = true
        }
        if ingredienteLocal3 == ""{
            
            ingredienteB3 = false
        }else{
            ingredienteB3 = true
        }
        if ingredienteLocal4 == ""{
            
            ingredienteB4 = false
        }else{
            ingredienteB4 = true
        }
        if ingredienteLocal5 == ""{
            
            ingredienteB5 = false
        }else{
            ingredienteB5 = true
        }
        
        if ingredienteB1 || ingredienteB2 || ingredienteB3 || ingredienteB4 || ingredienteB5{
            
            ingredientesB = true
        }else{
            ingredientesB = false
        }
        
        
        if ingredientesB && tamañoB && masaB && quesoB {
            comprarB.setEnabled(true)
            alerta.setText("")
            
            pushController(withName: "finalIdentificador", context: nil)
        }else{
            comprarB.setEnabled(false)
            alerta.setText("Debe llenar todos los campos")
        }
        
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
