//
//  NavigationBarImage.swift
//  Souvlaki 1.0
//
//  Created by DJL on 02/08/2018.
//  Copyright © 2018 apptouch. All rights reserved.
//

import UIKit
extension FirstViewController{
    
    func addNavBarImage() {
        
        let navController = navigationController!
        
        let image = #imageLiteral(resourceName: "Souvlaki_Street_icon")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        
        let bannerHeight = navController.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2 - image.size.width / 2
        
        let bannerY = bannerHeight / 2 - image.size.height / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
        
        
        
    }
    
    
}


