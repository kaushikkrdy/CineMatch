//
//  FriendReqCell.swift
//  CineMatch_v1
//
//  Created by L Kaushik Rangaraj on 24/6/21.
//

import UIKit

class FriendReqCell: UITableViewCell {


    @IBOutlet weak var friendReqImage: UIImageView!
    @IBOutlet weak var friendReqBubble: UIView!
    @IBOutlet weak var friendReqName: UILabel!
    
    @IBOutlet weak var friendReqAcceptButton: UIButton!
    @IBOutlet weak var friendReqDeclineButton: UIButton!
    
    let databaseManager = DatabaseManager()
    let friendReqVC = FriendRequestViewController()
    
    var friendReqUID: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        friendReqBubble.layer.cornerRadius = 10
        
        friendReqImage.layer.masksToBounds = true
        friendReqImage.layer.cornerRadius = friendReqImage.bounds.width/2.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func friendReqAcceptPressed(_ sender: UIButton) {

        self.databaseManager.acceptFriendReq(self.friendReqUID!)
    
        }
    
    @IBAction func friendReqDeclinePressed(_ sender: UIButton) {
        databaseManager.declineFriendReq(friendReqUID!)
        
    }
    
}
