//
//  ToDoCell.swift
//  Todolist
//
//  Created by MAC on 18/02/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit


protocol ToDoCellDelegate {
    func checkMarkTapped(_ sender: ToDoCell)
}
 
class ToDoCell: UITableViewCell {
   
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var isCompleteButton: UIButton!
    var delegate: ToDoCellDelegate?
    
    
    @IBAction func isCompleteButtonTapped(_ sender: UIButton) {
        delegate?.checkMarkTapped(self)
    }
    
}
