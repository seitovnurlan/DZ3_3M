//
//  FourthVC.swift
//  DZ3_3M
//
//  Created by Nurlan Seitov on 28/2/23.
//

import UIKit

class FourthVC: UIViewController {
    
    private let cellID = "cell"
   // var name: String?

    @IBOutlet weak var tableView: UITableView!
    
//    var per = Person(firstName: "", lastName: "", organization: "", email: "", yourtitle: "", phone: "", image: "")

     var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ThirdTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
        tableView.delegate = self
//        initData()
    }
   
    public func initData() {
        persons.append(Person(firstName: "Bill", lastName: "Gates", organization: "Microsoft", email: "bgates@microsoft.com", yourtitle: "CEO", phone: "996550500500", image: "bill-gates"))
        persons.append(Person(firstName: "Krishna", lastName: "Arvind", organization: "IBM", email: "kristi@ibm.com", yourtitle: "CEO", phone: "996700700700", image: "krishna-arvind-ibm"))
        persons.append(Person(firstName: "Tim", lastName: "Cook", organization: "Apple", email: "tcook@apple.com", yourtitle: "CEO", phone: "996200200200", image: "tim-cook"))
        persons.append(Person(firstName: "Satya", lastName: "Nadella", organization: "Microsoft", email: "snadella@microsoft.com", yourtitle: "CEO", phone: "996200200300", image: "satya-nadella-ms"))
        persons.append(Person(firstName: "Mark", lastName: "Zuckerberg", organization: "Meta", email: "mzuck@meta.com", yourtitle: "CEO", phone: "996300300300", image: "mark-zuckerberg"))
       // persons.append(per)
    }
}

extension FourthVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! ThirdTableViewCell
        
    cell.initUI(firstName: persons[indexPath.row].firstName, lastName: persons[indexPath.row].lastName, imageName: persons[indexPath.row].image, organization:persons[indexPath.row].organization, titleName: persons[indexPath.row].yourtitle)
    cell.imageViewCell.layer.cornerRadius = 40
    cell.imageViewCell.layer.borderWidth = 2
    cell.imageViewCell.layer.borderColor = UIColor.gray.cgColor
    cell.imageViewCell.clipsToBounds = true
        return cell
    }
}

extension FourthVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sixVC = SixthViewController()
        self.navigationController?.pushViewController(sixVC, animated: true)
        sixVC.imageName = persons[indexPath.row].image
        sixVC.name1 = "\(persons[indexPath.row].firstName)"
        sixVC.name2 = "\(persons[indexPath.row].lastName)"
        sixVC.name3 = "\(persons[indexPath.row].organization)"
        sixVC.name4 = "\(persons[indexPath.row].email)"
        sixVC.name5 = "\(persons[indexPath.row].yourtitle)"
        sixVC.name6 = "\(persons[indexPath.row].phone)"
//        print(persons[indexPath.row].image)
    }
}

