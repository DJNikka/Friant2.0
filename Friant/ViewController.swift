//
//  ViewController.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/20/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collection: UICollectionView!
    
    var friant = [Friant]()


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
                let name = row["identifier"]!
                let description = row["description"]!
                
                let furn = Friant(name: name, furnitureId: furnId, description: description)
            friant.append(furn)
                
            }
        
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    @IBAction func MakeCall(_ sender: Any) {
        
        let url:NSURL = NSURL(string: "tel://5106979709")!
//        UIApplication.shared.openURL(url as URL) -- deprecated method
  
        //insert Friant's phone number when completed
        
        //also darken the photos in paint 2 for the main view. darken + transparency = standout letters
        
    UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
      
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriantCell", for: indexPath) as? FriantCell {
            
            let furn = friant[indexPath.row]
            cell.configureCell(friant: furn)
            
            return cell
            
            //If there are more than 15 pieces to display, it will not load all. Improves performance
      
        } else {
            
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        var furn: Friant!
        
        furn = friant[indexPath.row]

      
    
        performSegue(withIdentifier: "FriantDetailVC", sender: furn)
        
 // furn was returning a nil value. this was responsible for the application crashing upon loading the FriantDetailVC
        // fetches the data from the parsed CSV file to pass through FriantDetailVC
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return friant.count
        
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 335, height: 140)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FriantDetailVC" {
            if let detailsVC = segue.destination as? FriantDetailVC {
                if let furn = sender as? Friant {
                    detailsVC.friant = furn
                }
            }
        }
        
        
    }
    
    
    }


