//
//  ReuseableView.swift
//  TacoPOP
//
//  Created by Son Ho on 5/28/18.
//  Copyright © 2018 Son Ho. All rights reserved.
//

import UIKit

protocol ReuseableView: class {
    
}

extension ReuseableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}
