//
//  MainViewController.swift
//  TacoPOP
//
//  Created by Son Ho on 5/28/18.
//  Copyright © 2018 Son Ho. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, DataServiceDelegate {

    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var service: DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        service.delegate = self
        service.loadDeliciousTaco()
        
        collectionView.delegate = self
        collectionView.dataSource = self

        headerView.addDropShadow()
        
        //let nib = UINib(nibName: "TacoCell", bundle: nil)
        //collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        collectionView.register(TacoCell.self)
    }
    
    func deliciousTacoLoaded() {
        print("Loaded!")
    }

}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return service.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell else {
            //return UICollectionViewCell()
        //}
        //cell.configureCell(taco: service.tacoArray[indexPath.row])
        //return cell
        let cell = collectionView.dequeueReuseableCell(forIndexPath: indexPath as NSIndexPath) as TacoCell
        cell.configureCell(taco: service.tacoArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 160)
    }
    
}
