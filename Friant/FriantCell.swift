//
//  FriantCell.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/20/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import UIKit

class FriantCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!

    var friant: Friant!
    
    func configureCell(friant: Friant) {
        self.friant = friant
        
        nameLbl.text = self.friant.name.uppercased()
        thumbImg.image = UIImage(named: "\(self.friant.furnitureId)")
//        descriptionLbl.text = self.friant.descriptionId.uppercased()
        
        //adding letters in order to sort by typing UIImage(named: "A\(self.friant.furintureId)")
        //adding letters in order to sort by typing UIImage(named: "B\(self.friant.furintureId)")
        //etc
    }
    
}
