//
//  FullPostTableViewCell.swift
//  Tech Social Media App
//
//  Created by Zane Jones on 3/31/23.
//

import UIKit

class FullPostTableViewCell: UITableViewCell {

    @IBOutlet var labelUser: UILabel!
    @IBOutlet var labelDate: UILabel!
    @IBOutlet var labelText: UILabel!
    
    var post: Post? {
        didSet{
            updateView()
        }
    }
    
    func updateView() {
        guard let post else { return }
        
        labelUser.text = post.user
        labelDate.text = String(post.date.formatted(date: .abbreviated, time: .omitted))
        labelText.text = post.text
    }

}
