//
//  NoteCell.swift
//  d02
//
//  Created by Zenande GODONGWANA on 2018/10/04.
//  Copyright © 2018 Zenande GODONGWANA. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var note: (String, String, String)? {
        didSet {
            nameLabel.text = note?.0;
            dateLabel.text = note?.1;
            descriptionLabel.text = note?.2;
        }
        
    }
}
