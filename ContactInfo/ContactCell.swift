//
//  ContactCell.swift
//  ContactInfo
//
//  Created by Jun Dang on 2018-12-25.
//  Copyright © 2018 Jun Dang. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //backgroundColor = .red
        let starButton = UIButton(type: .system)
        //starButton.setTitle("star", for: .normal)
        starButton.setImage(UIImage(named: "star"), for: .normal)
        starButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        starButton.tintColor = .red
        starButton.addTarget(self, action: #selector(handleMarkAsFavorite), for: .touchUpInside)
        accessoryView = starButton
        
    }
    weak var delegate: HandleButtonDelegate?
    
    @objc private func handleMarkAsFavorite() {
        delegate?.handleFavoriteMark(cell: self as UITableViewCell)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

