//
//  FriantDetailVC.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/21/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import UIKit

class FriantDetailVC: UIViewController {


    var friant: Friant!

    @IBOutlet weak var nameLbl: UILabel!


    @IBOutlet weak var firstContainer: UIView!
    
    @IBOutlet weak var secondContainer: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        

        nameLbl.text = friant.name
        //nameLbl.text = "\(friant.name)" is more explicit but unnecessary
        
    }

    @IBAction func goPressed(_ sender: UISegmentedControl) {
    
   
        
        switch sender.selectedSegmentIndex {
        case 0:
           
            firstContainer.isHidden = false
            secondContainer.isHidden = true
        case 1:
            firstContainer.isHidden = true
            secondContainer.isHidden = false
        
        default:
            break;
        }
      
   
//        performSegue(withIdentifier: "go", sender: self)
        
        
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let destVC = segue.destination as! DescriptionVC
//        
//        destVC.nameToDisplay = nameLbl.text!
    
//    passing data from one view controller to another
    }
    
    

    @IBAction func backBtnPressed(_ sender: Any) {
    
     dismiss(animated: true, completion: nil)

    }
}
