//
//  Eleccion.swift
//  Pizzas
//
//  Created by David Osses Mena on 02-03-17.
//  Copyright © 2017 David Osses Mena. All rights reserved.
//

import UIKit

class Eleccion: UIViewController {
    
    var masa : String = ""
    var tamaño : String = ""
    var queso : String = ""
    var ingrediente1 : String = ""
    var ingrediente2 : String = ""
    var ingrediente3 : String = ""
    var ingrediente4 : String = ""
    var ingrediente5 : String = ""
    
    var masaAnterior : String = ""
    var tamañoAnterior : String = ""
    var quesoAnterior : String = ""
    var ingrediente1Anterior : String = ""
    var ingrediente2Anterior : String = ""
    var ingrediente3Anterior : String = ""
    var ingrediente4Anterior : String = ""
    var ingrediente5Anterior : String = ""
    
    var cambiarTamaño : Bool = false
    var cambiarMasa : Bool = false
    var cambiarQueso : Bool = false
    var cambiarIngrediente : Bool = false
    
    var  ing1vacio : Bool = false
    var  ing2vacio : Bool = false
    var  ing3vacio : Bool = false
    var  ing4vacio : Bool = false
    var  ing5vacio : Bool = false

    @IBOutlet weak var tamanoL: UILabel!
    @IBOutlet weak var masaL: UILabel!
    @IBOutlet weak var quesoL: UILabel!
    @IBOutlet weak var ingrediente1L: UILabel!
    @IBOutlet weak var ingrediente2L: UILabel!
    @IBOutlet weak var ingrediente3L: UILabel!
    @IBOutlet weak var ingrediente4L: UILabel!
    @IBOutlet weak var ingrediente5L: UILabel!
    @IBOutlet weak var mensaje: UILabel!
   
    @IBOutlet weak var comprarB: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        masa = masaAnterior
        tamaño = tamañoAnterior
        queso = quesoAnterior
        ingrediente1 = ingrediente1Anterior
        ingrediente2 = ingrediente2Anterior
        ingrediente3 = ingrediente3Anterior
        ingrediente4 = ingrediente4Anterior
        ingrediente5 = ingrediente5Anterior
        
        tamanoL.text = tamaño
        masaL.text = masa
        quesoL.text = queso
        ingrediente1L.text = ingrediente1
        ingrediente2L.text = ingrediente2
        ingrediente3L.text = ingrediente3
        ingrediente4L.text = ingrediente4
        ingrediente5L.text = ingrediente5
        
        if ingrediente1L.text == ""{
            
            ing1vacio = true
        }
        if ingrediente2L.text == ""{
            
            ing2vacio = true
        }
        if ingrediente3L.text == ""{
            
            ing3vacio = true
        }
        if ingrediente4L.text == ""{
            
            ing4vacio = true
        }
        if ingrediente5L.text == ""{
            
            ing5vacio = true
        }
        
        
        if tamanoL.text == "" {
            
            mensaje.text = "Falta que elija el tamaño de su pizza"
            comprarB.isEnabled = false
            
        }else if masaL.text == "" {
            
            mensaje.text = "Falta que elija la masa de su pizza"
            comprarB.isEnabled = false
        }else if quesoL.text == "" {
            
            mensaje.text = "Falta que elija el queso de su pizza"
            comprarB.isEnabled = false
        }else if ing1vacio == true && ing2vacio == true && ing3vacio == true && ing4vacio == true && ing5vacio == true {
            
            mensaje.text = "Falta que elija al menos un ingrediente para su pizza"
            comprarB.isEnabled = false
        }

       
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
   
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func cambiarTamañoB(_ sender: Any) {
        
        cambiarTamaño = true
    }
    @IBAction func cambiarMasaB(_ sender: Any) {
        
        cambiarMasa = true
    }
    @IBAction func cambiarQuesoB(_ sender: Any) {
        
        cambiarQueso = true
    }
    @IBAction func cambiarIngredienteB(_ sender: Any) {
        
        cambiarIngrediente = true
    }
    
    @IBAction func comprar(_ sender: Any) {
        
       
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if cambiarTamaño {
            
            let sigVista = segue.destination as! Tamano
            sigVista.masaAnterior = masa
            sigVista.tamañoAnterior = tamaño
            sigVista.quesoAnterior = queso
            sigVista.ingrediente1Anterior = ingrediente1
            sigVista.ingrediente2Anterior = ingrediente2
            sigVista.ingrediente3Anterior = ingrediente3
            sigVista.ingrediente4Anterior = ingrediente4
            sigVista.ingrediente5Anterior = ingrediente5
            
        }
        
        if cambiarQueso {
            
            let sigVista = segue.destination as! Queso
            sigVista.masaAnterior = masa
            sigVista.tamañoAnterior = tamaño
            sigVista.quesoAnterior = queso
            sigVista.ingrediente1Anterior = ingrediente1
            sigVista.ingrediente2Anterior = ingrediente2
            sigVista.ingrediente3Anterior = ingrediente3
            sigVista.ingrediente4Anterior = ingrediente4
            sigVista.ingrediente5Anterior = ingrediente5
            
        }
        
        if cambiarMasa {
            
            let sigVista = segue.destination as! Masa
            sigVista.masaAnterior = masa
            sigVista.tamañoAnterior = tamaño
            sigVista.quesoAnterior = queso
            sigVista.ingrediente1Anterior = ingrediente1
            sigVista.ingrediente2Anterior = ingrediente2
            sigVista.ingrediente3Anterior = ingrediente3
            sigVista.ingrediente4Anterior = ingrediente4
            sigVista.ingrediente5Anterior = ingrediente5
            
        }
        
        if cambiarIngrediente {
            
            let sigVista = segue.destination as! Ingredientes
            sigVista.masaAnterior = masa
            sigVista.tamañoAnterior = tamaño
            sigVista.quesoAnterior = queso
            sigVista.ingrediente1Anterior = ingrediente1
            sigVista.ingrediente2Anterior = ingrediente2
            sigVista.ingrediente3Anterior = ingrediente3
            sigVista.ingrediente4Anterior = ingrediente4
            sigVista.ingrediente5Anterior = ingrediente5
            
        }
        
    }
   
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
