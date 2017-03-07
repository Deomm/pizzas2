//
//  Tamano.swift
//  Pizzas
//
//  Created by David Osses Mena on 02-03-17.
//  Copyright © 2017 David Osses Mena. All rights reserved.
//

import UIKit

class Tamano: UIViewController {
    
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
    
    var continuarB : Bool = false
    var finalizarB : Bool = false

    @IBOutlet weak var eleccion: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        masa = masaAnterior
        tamaño = tamañoAnterior
        queso = quesoAnterior
        ingrediente1 = ingrediente1Anterior
        ingrediente2 = ingrediente2Anterior
        ingrediente3 = ingrediente3Anterior
        ingrediente4 = ingrediente4Anterior
        ingrediente5 = ingrediente5Anterior
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if finalizarB {
            
            let sigVista = segue.destination as! Eleccion
            sigVista.tamañoAnterior = eleccion.text!
            sigVista.masaAnterior = masa
            sigVista.quesoAnterior = queso
            sigVista.ingrediente1Anterior = ingrediente1
            sigVista.ingrediente2Anterior = ingrediente2
            sigVista.ingrediente3Anterior = ingrediente3
            sigVista.ingrediente4Anterior = ingrediente4
            sigVista.ingrediente5Anterior = ingrediente5
            
            
        }else if continuarB{
            
            let sigVista = segue.destination as! Masa
            sigVista.tamañoAnterior = eleccion.text!
            sigVista.masaAnterior = masa
            sigVista.quesoAnterior = queso
            sigVista.ingrediente1Anterior = ingrediente1
            sigVista.ingrediente2Anterior = ingrediente2
            sigVista.ingrediente3Anterior = ingrediente3
            sigVista.ingrediente4Anterior = ingrediente4
            sigVista.ingrediente5Anterior = ingrediente5

        }
           }
    
    @IBAction func continuar(_ sender: Any) {
        
        continuarB = true
    }
    @IBAction func finalizar(_ sender: Any) {
        
        finalizarB = true
    }
    @IBAction func chica(_ sender: Any) {
        
        eleccion.text = "Chica"
    }
    @IBAction func mediana(_ sender: Any) {
        
        eleccion.text = "Mediana"
    }
    @IBAction func grande(_ sender: Any) {
        
        eleccion.text = "Grande"
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
