//
//  ExpandableNames.swift
//  ContactInfo
//
//  Created by Jun Dang on 2018-12-25.
//  Copyright © 2018 Jun Dang. All rights reserved.
//

import Foundation
import Contacts

//MARK: - Model are written in class because the nested value will be changed repond to the button tap later on. so use reference type
class ExpandableNames {
    
    var isExpanded: Bool
    var names: [FavoritableContact]
    
    init(isExpanded: Bool, names:[FavoritableContact]) {
        self.isExpanded = isExpanded
        self.names = names
    }
}

class FavoritableContact {
    let contact: CNContact
    var hasFavorited: Bool = false
    init(contact: CNContact, hasFavorited: Bool){
        self.contact = contact
        self.hasFavorited = hasFavorited
    }
}


