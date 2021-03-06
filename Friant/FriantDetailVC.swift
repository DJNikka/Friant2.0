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

    @IBOutlet weak var descLbl: UITextView!
    
    @IBOutlet weak var secondContainer: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        

        nameLbl.text = friant.name
        descLbl.text = friant.description
        
        //nameLbl.text = "\(friant.name)" is more explicit but unnecessary
        
    }

    @IBAction func goPressed(_ sender: UISegmentedControl) {
    
   
        
        switch sender.selectedSegmentIndex {
        case 0:
        
            secondContainer.isHidden = false
            descLbl.isHidden = true
        case 1:
            secondContainer.isHidden = true
            descLbl.isHidden = false
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
