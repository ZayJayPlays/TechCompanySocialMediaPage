//
//  PostTableViewCell.swift
//  Tech Social Media App
//
//  Created by Zane Jones on 3/21/23.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet var labelUser: UILabel!
    @IBOutlet var labelDate: UILabel!
    @IBOutlet var labelText: UILabel!
    @IBOutlet var labelComments: UILabel!
    
    
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
        labelComments.text = "Comments(\(post.comments.count))"
    }
}
