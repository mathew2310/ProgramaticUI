//
//  UIImageDownload .swift
//  UserListProgramatically
//
//  Created by admin on 09/03/2022.
//

import Foundation
import UIKit


extension UIImageView {
    
    func downLoadImage(avatar: String) {
        
        guard let url = URL(string: avatar) else
        {return}
        
        let urlSession = URLSession.shared
        
        let datatTask = urlSession.dataTask(with: url) {
            data, responce, error in
            
            guard let data = data, error == nil else {
                return
            }
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
            
        }
        
        
       
        
        datatTask.resume()
        
    }
}

// I love watching  live football
