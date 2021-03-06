//
//  ChatMessageTableViewCell.swift
//  UPchieve
//
//  Created by Zuoyuan Huang on 10/23/17.
//  Copyright © 2017 Zuoyuan Huang. All rights reserved.
//

import UIKit

class ChatMessageTableViewCell: UITableViewCell {

    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(withMessage message: UPchieveChatMessage) {
        if message.outgoing {
            self.userLabel.text = "Me"
        } else {
            self.userLabel.text = message.fromUser
        }
        self.timeLabel.text = message.time
        self.messageLabel.text = message.content
    }

}
