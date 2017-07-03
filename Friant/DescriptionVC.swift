//
//  DescriptionVC.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/28/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import UIKit

class DescriptionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {


    @IBOutlet weak var collection: UICollectionView!
    
    var friantD = [FriantD]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        collection.dataSource = self
        collection.delegate = self
        
        parseFurnitureCSV()
        
    }

    func parseFurnitureCSV() {
        
        let path = Bundle.main.path(forResource: "friant", ofType: "csv")!
        
        do {
            let csv = try CSV(contentsOfURL: path)
            let rows = csv.rows
            let columns = csv.columns
            
            print(columns)
            
            print(rows)
            
            for row in rows {
                
                let furnId = Int(row["id"]!)!
                let symbol = row["symbol"]!
                
                let furn = FriantD(symbol: symbol, furnitureId: furnId)
                friantD.append(furn)
                
            }
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriantDCell", for: indexPath) as? FriantDCell {
            
            let furn = friantD[indexPath.row]
            cell.configureCell(friantD: furn)
            
            return cell
        } else {
            return UICollectionViewCell()
            
        }
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 12
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: 350, height: 235)
    }
    
    
}
