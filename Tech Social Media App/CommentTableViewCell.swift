//
//  CommentTableViewCell.swift
//  Tech Social Media App
//
//  Created by Zane Jones on 3/31/23.
//

import UIKit

class CommentTableViewCell: UITableViewCell {

    @IBOutlet var labelUser: UILabel!
    @IBOutlet var labelDate: UILabel!
    @IBOutlet var labelText: UILabel!
    
    var comment: Comment? {
        didSet{
            updateView()
        }
    }
    
    func updateView() {
        guard let comment else { return }
        
        labelUser.text = comment.user
        labelDate.text = String(comment.date.formatted(date: .abbreviated, time: .omitted))
        labelText.text = comment.text
    }

}
