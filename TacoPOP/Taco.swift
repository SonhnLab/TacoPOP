//
//  Taco.swift
//  TacoPOP
//
//  Created by Son Ho on 5/28/18.
//  Copyright © 2018 Son Ho. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour  = 0
    case Corn   = 1
}

enum TacoProtein: String {
    case Beef       = "Beef"
    case Chicken    = "Chicken"
    case Brisket    = "Brisket"
    case Fish       = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 0
    case Plain  = 1
}

struct Taco {
    
    private var _id: Int!
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _proteinId: TacoProtein!
    private var _condimentId: TacoCondiment!
    
    var id: Int {
        return _id
    }
    
    var productName: String {
        return _productName
    }
    
    var shellId: TacoShell {
        return _shellId
    }
    
    var proteinId: TacoProtein {
        return _proteinId
    }
    
    var condimentId: TacoCondiment {
        return _condimentId
    }
    
    init(id: Int, productName: String, shellId: Int, proteinId: Int, condimentId: Int) {
        self._id = id
        self._productName = productName
        
        switch shellId {
        case 1:
            self._shellId = TacoShell.Corn
            break
        default:
            self._shellId = TacoShell.Flour
            break
        }
        
        switch proteinId {
        case 1:
            self._proteinId = TacoProtein.Chicken
            break
        case 2:
            self._proteinId = TacoProtein.Brisket
            break
        case 3:
            self._proteinId = TacoProtein.Fish
            break
        default:
            self._proteinId = TacoProtein.Beef
            break
        }
        
        switch condimentId {
        case 1:
            self._condimentId = TacoCondiment.Plain
            break
        default:
            self._condimentId = TacoCondiment.Loaded
        }
    }
}
