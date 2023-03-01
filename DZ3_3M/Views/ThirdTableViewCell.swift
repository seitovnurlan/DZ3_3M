//
//  ThirdTableViewCell.swift
//  DZ3_3M
//
//  Created by Nurlan Seitov on 28/2/23.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {

   
    @IBOutlet weak var imageViewCell: UIImageView!
    
    @IBOutlet weak var firstnameLabelCell: UILabel!
    
    @IBOutlet weak var lastNameLabelCell: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var labelOrganiz: UILabel!
    

    
    public func initUI(firstName: String,lastName:String, imageName: String, organization:String, titleName:String) {
        firstnameLabelCell.text = firstName
        lastNameLabelCell.text = lastName
        titleLabel.text = titleName
        imageViewCell.image = UIImage(named: imageName)
        labelOrganiz.text = organization
       // buttonCell.setTitle(firstName, for: .normal)

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
