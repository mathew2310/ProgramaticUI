//
//  ViewController.swift
//  UserListProgramatically
//
//  Created by admin on 08/03/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    let tableView = UITableView ()
    var users: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
       //VIEW
        self.view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        getUsers()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        
        tableView.register(UserListCustomClass.self, forCellReuseIdentifier: "cell")
        
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0.0).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0.0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0.0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0.0).isActive = true
}
    func getUsers(){
        
        
        let urlstr = "https://reqres.in/api/users"
        let url = URL(string: urlstr)
         
        guard url != nil else  {
            return
        }
        let session = URLSession.shared
        let datatask = session.dataTask(with: url!) {
            data, responce, error in
            
            let decoded = JSONDecoder()
            do{
                //let decodedResponce = try
                //JSONDecoder().decode(UserResponce.self, from: data!)
                let decodedResponce = try decoded.decode(UserResponce.self, from: data!)
                self.users = decodedResponce.data
               print("data")
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }catch{
                print(error.localizedDescription)
            }
            
        }
        datatask.resume()
    }
    
}



extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
        tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UserListCustomClass
        let user = users[indexPath.row]
        //cell.userId.text = String(users [indexPath.row].id)
        cell.emaillbl.text = users[indexPath.row].email
        cell.firstNamelbl.text = users[indexPath.row].first_name
        cell.lastNamelbl.text = users[indexPath.row].last_name
        cell.userImage.downLoadImage(avatar: user.avatar)
        //cell.textLabel?.text = "A"
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indxexPath: IndexPath) -> CGFloat{
    return 200
    }
    
    
}
