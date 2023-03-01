//
//  SixthViewController.swift
//  DZ3_3M
//
//  Created by Nurlan Seitov on 1/3/23.
//

import UIKit

class SixthViewController: UIViewController {

    public var name1: String?
    public var name2: String?
    public var name3: String?
    public var name4: String?
    public var name5: String?
    public var name6: String?
    public var imageName: String = ""

    
    @IBOutlet weak var imageViewExten: UIImageView!
    
    @IBOutlet weak var labelFirstName: UILabel!
    
    @IBOutlet weak var labelLastName: UILabel!
        
    @IBOutlet weak var LabelOrganiz: UILabel!
    
    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var labelEmail: UILabel!
    
    @IBOutlet weak var labelPhone: UILabel!
    
    
    
    @IBAction func closeButton(_ sender: Any) {
        
        let fiftVC = FifthVC()
        self.navigationController?.pushViewController(fiftVC, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageViewExten.image = UIImage(named: imageName)
        labelFirstName.text = name1 ?? "emty"
        labelLastName.text = name2 ?? "emty"
        LabelOrganiz.text = name3 ?? "emty"
        labelTitle.text = name4 ?? "emty"
        labelEmail.text = name5 ?? "emty"
        labelPhone.text = name6 ?? "emty"
        
        imageViewExten.layer.cornerRadius = 80
        imageViewExten.layer.borderWidth = 2
        imageViewExten.layer.borderColor = UIColor.gray.cgColor
    }
}
