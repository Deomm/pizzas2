//
//  Valores.swift
//  Pizzas2
//
//  Created by David Osses Mena on 08-03-17.
//  Copyright © 2017 David Osses Mena. All rights reserved.
//

import WatchKit

class Valores: NSObject {
    
    var tamaño : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingrediente1: String = ""
    var ingrediente2 : String = ""
    var ingrediente3 : String = ""
    var ingrediente4 : String = ""
    var ingrediente5 : String = ""
    
    init(t : String, m : String, q : String, i1 : String, i2 : String, i3 : String, i4 : String, i5 : String) {
        
        tamaño = t
        masa = m
        queso = q
        ingrediente1 = i1
        ingrediente2 = i2
        ingrediente3 = i3
        ingrediente4 = i4
        ingrediente5 = i5
    }

}
