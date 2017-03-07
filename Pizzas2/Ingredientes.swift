//
//  Ingredientes.swift
//  Pizzas
//
//  Created by David Osses Mena on 02-03-17.
//  Copyright © 2017 David Osses Mena. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController {
    
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

    @IBOutlet weak var eleccion1: UILabel!
    @IBOutlet weak var eleccion2: UILabel!
    @IBOutlet weak var eleccion3: UILabel!
    @IBOutlet weak var eleccion4: UILabel!
    @IBOutlet weak var eleccion5: UILabel!
    
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
        let sigVista = segue.destination as! Eleccion
        sigVista.masaAnterior = masa
        sigVista.tamañoAnterior = tamaño
        sigVista.quesoAnterior = queso
        sigVista.ingrediente1Anterior = eleccion1.text!
        sigVista.ingrediente2Anterior = eleccion2.text!
        sigVista.ingrediente3Anterior = eleccion3.text!
        sigVista.ingrediente4Anterior = eleccion4.text!
        sigVista.ingrediente5Anterior = eleccion5.text!
    }
    
    @IBAction func jamon(_ sender: Any) {
        
        if eleccion1.text == "" {
            eleccion1.text = "Jamón"
        } else if eleccion2.text == "" {
            
            eleccion2.text = "Jamón"
        } else if eleccion3.text == "" {
            
            eleccion3.text = "Jamón"
        } else if eleccion4.text == "" {
            
            eleccion4.text = "Jamón"
        } else if eleccion5.text == "" {
            
            eleccion5.text = "Jamón"
        }
    }
    @IBAction func pepperoni(_ sender: Any) {
        
        if eleccion1.text == "" {
            eleccion1.text = "Pepperoni"
        } else if eleccion2.text == "" {
            
            eleccion2.text = "Pepperoni"
        } else if eleccion3.text == "" {
            
            eleccion3.text = "Pepperoni"
        } else if eleccion4.text == "" {
            
            eleccion4.text = "Pepperoni"
        } else if eleccion5.text == "" {
            
            eleccion5.text = "Pepperoni"
        }
    }
    @IBAction func pavo(_ sender: Any) {
        
        if eleccion1.text == "" {
            eleccion1.text = "Pavo"
        } else if eleccion2.text == "" {
            
            eleccion2.text = "Pavo"
        } else if eleccion3.text == "" {
            
            eleccion3.text = "Pavo"
        } else if eleccion4.text == "" {
            
            eleccion4.text = "Pavo"
        } else if eleccion5.text == "" {
            
            eleccion5.text = "Pavo"
        }
    }
    @IBAction func salchicha(_ sender: Any) {
        if eleccion1.text == "" {
            eleccion1.text = "Salchicha"
        } else if eleccion2.text == "" {
            
            eleccion2.text = "Salchicha"
        } else if eleccion3.text == "" {
            
            eleccion3.text = "Salchicha"
        } else if eleccion4.text == "" {
            
            eleccion4.text = "Salchicha"
        } else if eleccion5.text == "" {
            
            eleccion5.text = "Salchicha"
        }
    }
    @IBAction func pimienta(_ sender: Any) {
        if eleccion1.text == "" {
            eleccion1.text = "Pimienta"
        } else if eleccion2.text == "" {
            
            eleccion2.text = "Pimienta"
        } else if eleccion3.text == "" {
            
            eleccion3.text = "Pimienta"
        } else if eleccion4.text == "" {
            
            eleccion4.text = "Pimienta"
        } else if eleccion5.text == "" {
            
            eleccion5.text = "Pimienta"
        }
    }
    @IBAction func aceituna(_ sender: Any) {
        if eleccion1.text == "" {
            eleccion1.text = "Aceituna"
        } else if eleccion2.text == "" {
            
            eleccion2.text = "Aceituna"
        } else if eleccion3.text == "" {
            
            eleccion3.text = "Aceituna"
        } else if eleccion4.text == "" {
            
            eleccion4.text = "Aceituna"
        } else if eleccion5.text == "" {
            
            eleccion5.text = "Aceituna"
        }
    }
    @IBAction func cebolla(_ sender: Any) {
        if eleccion1.text == "" {
            eleccion1.text = "Cebolla"
        } else if eleccion2.text == "" {
            
            eleccion2.text = "Cebolla"
        } else if eleccion3.text == "" {
            
            eleccion3.text = "Cebolla"
        } else if eleccion4.text == "" {
            
            eleccion4.text = "Cebolla"
        } else if eleccion5.text == "" {
            
            eleccion5.text = "Cebolla"
        }
    }
    @IBAction func pina(_ sender: Any) {
        if eleccion1.text == "" {
            eleccion1.text = "Piña"
        } else if eleccion2.text == "" {
            
            eleccion2.text = "Piña"
        } else if eleccion3.text == "" {
            
            eleccion3.text = "Piña"
        } else if eleccion4.text == "" {
            
            eleccion4.text = "Piña"
        } else if eleccion5.text == "" {
            
            eleccion5.text = "Piña"
        }
    }
    @IBAction func anchoa(_ sender: Any) {
        if eleccion1.text == "" {
            eleccion1.text = "Anchoa"
        } else if eleccion2.text == "" {
            
            eleccion2.text = "Anchoa"
        } else if eleccion3.text == "" {
            
            eleccion3.text = "Anchoa"
        } else if eleccion4.text == "" {
            
            eleccion4.text = "Anchoa"
        } else if eleccion5.text == "" {
            
            eleccion5.text = "Anchoa"
        }
    }
    @IBAction func tocino(_ sender: Any) {
        if eleccion1.text == "" {
            eleccion1.text = "Tocino"
        } else if eleccion2.text == "" {
            
            eleccion2.text = "Tocino"
        } else if eleccion3.text == "" {
            
            eleccion3.text = "Tocino"
        } else if eleccion4.text == "" {
            
            eleccion4.text = "Tocino"
        } else if eleccion5.text == "" {
            
            eleccion5.text = "Tocino"
        }
    }
    
    
    @IBAction func borrar1(_ sender: Any) {
        
        eleccion1.text = ""
    }
    @IBAction func borrar2(_ sender: Any) {
        
        eleccion2.text = ""
    }
    @IBAction func borrar3(_ sender: Any) {
        
        eleccion3.text = ""
    }
    @IBAction func borrar4(_ sender: Any) {
        
        eleccion4.text = ""
    }
    @IBAction func borrar5(_ sender: Any) {
        
        eleccion5.text = ""
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
