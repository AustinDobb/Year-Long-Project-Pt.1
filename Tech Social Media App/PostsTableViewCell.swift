//
//  PostsTableViewCell.swift
//  Tech Social Media App
//
//  Created by Austin Dobberfuhl on 11/1/23.
//

import UIKit



class PostsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var postsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updatePosts(with postStructure: Posts) {
        userLabel.text = postStructure.user
        titleLabel.text = postStructure.title
        dateLabel.text = postStructure.date.formatted(.dateTime.month(.defaultDigits).day().year(.twoDigits).hour().minute())
        postsLabel.text = postStructure.bodyText
    }
    
}
