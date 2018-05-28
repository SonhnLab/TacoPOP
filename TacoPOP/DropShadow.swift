//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Son Ho on 5/28/18.
//  Copyright © 2018 Son Ho. All rights reserved.
//

import UIKit

protocol DropShadow {
    
}

extension DropShadow where Self: UIView {
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.75
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 4
    }
}
