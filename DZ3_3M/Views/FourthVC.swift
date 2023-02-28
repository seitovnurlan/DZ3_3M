//
//  FourthVC.swift
//  DZ3_3M
//
//  Created by Nurlan Seitov on 28/2/23.
//

import UIKit

class FourthVC: UIViewController {
    
    private let cellID = "cell"

    @IBOutlet weak var tableView: UITableView!
    
    
    private var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
//        tableView.register(UINib(nibName: "ThirdTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
        tableView.delegate = self
        initData()
    }
    private func initData() {
        persons.append(Person(firstName: "Ivan", lastName: "Ivanov", organization: "Geeks", email: "geeks@mail.kg", yourtitle: "Developer", phone: "996550500500", image: "star"))
        persons.append(Person(firstName: "Sergei", lastName: "Sidorov", organization: "Neobis", email: "neobis@mail.kg", yourtitle: "Designer", phone: "996700700700", image: "star"))
        persons.append(Person(firstName: "Asan", lastName: "Asanov", organization: "Makers", email: "makers@mail.kg", yourtitle: "TeamLeader", phone: "996200200200", image: "star"))
    }
}

extension FourthVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // persons.count
        persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! ThirdTableViewCell
        
        cell.initUI(firstName: persons[indexPath.row].firstName, lastName: persons[indexPath.row].lastName, imageName: persons[indexPath.row].image, titleName:persons[indexPath.row].yourtitle)
        return cell
    }
}

extension FourthVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
struct Person {
    var firstName: String
    var lastName: String
    var organization: String
    var email: String
    var yourtitle: String
    var phone: String
    var image: String
}
