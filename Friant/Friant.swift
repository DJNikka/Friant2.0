//
//  Friant.swift
//  Friant
//
//  Created by Konstantine Piterman on 6/20/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import Foundation


class Friant {
    
    private var _name: String!
    private var _furnitureId: Int!
    
    var name: String {
        return _name
    }
    
    var furnitureId: Int {
        return _furnitureId
        
    }
    
    init(name: String, furnitureId: Int) {
        
        self._name = name
        self._furnitureId = furnitureId
    }
    
}
