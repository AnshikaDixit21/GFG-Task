//
//  DataTableViewCell.swift
//  GFG Task
//
//  Created by Anshika on 13/10/24.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    @IBOutlet weak var keyLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet var houseColorView: UIView!
    
    func configure(with key: String, value: String) {
        keyLabel.text = key
        valueLabel.text = value
    }
}
