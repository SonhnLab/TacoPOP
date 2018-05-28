//
//  UICollectionView+Extension.swift
//  TacoPOP
//
//  Created by Son Ho on 5/28/18.
//  Copyright © 2018 Son Ho. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell> (_: T.Type) where T: ReuseableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReuseableCell<T: UICollectionViewCell> (forIndexPath indexPath: NSIndexPath) -> T where T: ReuseableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cel with identifier \(T.reuseIdentifier)")
        }
        return cell
    }
    
}

extension UICollectionViewCell: ReuseableView {}
