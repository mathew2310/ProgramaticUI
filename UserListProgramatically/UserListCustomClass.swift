//
//  UserListCustomClass.swift
//  UserListProgramatically
//
//  Created by admin on 09/03/2022.
//

import Foundation
import UIKit

class UserListCustomClass : UITableViewCell{
    
    let backView : UIView = {
        
        let view = UIView ()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
        
    }()
    
    let userImage: UIImageView = {
           let img = UIImageView()
           img.contentMode = .scaleAspectFill
           img.translatesAutoresizingMaskIntoConstraints = false
           img.layer.cornerRadius = 35
           img.clipsToBounds = true
           return img
       }()
    
    var firstNamelbl: UILabel = {
        let firstNamelbl = UILabel()
        firstNamelbl.textColor = .blue
        firstNamelbl.font = UIFont.boldSystemFont(ofSize: 18)
        firstNamelbl.translatesAutoresizingMaskIntoConstraints = false
        return firstNamelbl
    }()
    
     var lastNamelbl : UILabel = {
        let lastNamelbl = UILabel()
        lastNamelbl.textColor = .blue
        lastNamelbl.font = UIFont.boldSystemFont(ofSize: 18)
        lastNamelbl.translatesAutoresizingMaskIntoConstraints = false
        return lastNamelbl
    }()
    
    var emaillbl : UILabel = {
        let emaillbl = UILabel()
        emaillbl.textColor = .blue
        emaillbl.font = UIFont.boldSystemFont(ofSize: 18)
        emaillbl.translatesAutoresizingMaskIntoConstraints = false
        return emaillbl
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        backView.layer.cornerRadius = 5
        backView.clipsToBounds = true
        userImage.layer.cornerRadius = 52
        userImage.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
          super.setSelected(selected, animated: animated)
         // addSubview(backView)
          backView.addSubview(userImage)
          backView.addSubview(firstNamelbl)
          backView.addSubview(lastNamelbl)
          backView.addSubview(emaillbl)
        self.contentView.addSubview(backView)
        
        backView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        backView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10)
        backView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
        backView.heightAnchor.constraint(equalToConstant:40).isActive = true

        userImage.topAnchor.constraint(equalTo:self.backView.topAnchor).isActive = true
        userImage.leadingAnchor.constraint(equalTo:self.backView.leadingAnchor, constant: 10).isActive = true
        
        
        firstNamelbl.topAnchor.constraint(equalTo:self.backView.topAnchor).isActive = true
        firstNamelbl.leadingAnchor.constraint(equalTo:self.userImage.trailingAnchor).isActive = true
        firstNamelbl.trailingAnchor.constraint(equalTo:self.backView.trailingAnchor).isActive = true
        
        lastNamelbl.topAnchor.constraint(equalTo:self.firstNamelbl.bottomAnchor).isActive = true
        lastNamelbl.leadingAnchor.constraint(equalTo:self.userImage.trailingAnchor).isActive = true
        lastNamelbl.trailingAnchor.constraint(equalTo:self.backView.trailingAnchor).isActive = true
        
        emaillbl.topAnchor.constraint(equalTo:self.lastNamelbl.bottomAnchor).isActive = true
        emaillbl.leadingAnchor.constraint(equalTo:self.userImage.trailingAnchor).isActive = true
        emaillbl.trailingAnchor.constraint(equalTo:self.backView.trailingAnchor).isActive = true

      }
            
        
            
           
        }
        
//i am 10 years old 
