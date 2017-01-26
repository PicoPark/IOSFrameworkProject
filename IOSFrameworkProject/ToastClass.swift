//
//  ToastClass.swift
//  IOSFrameworkProject
//
//  Created by David Fournier on 25/01/2017.
//  Copyright © 2017 Salomé Russier. All rights reserved.
//

import Foundation
import UIKit


open class Toast {
    
    static var shared = Toast()
    
    var view: UIView!
    
    var title: UILabel!
    
    
    
    private func createToast(message: String, MainView: UIView,type: ToasType) -> UIView {
        //        self.view = UIView(frame: frame)
        //        self.view.backgroundColor = .clear
        
        self.title = UILabel(frame: CGRect(x:20.0, y:(MainView.frame.size.height)-80, width:(MainView.frame.size.width)-40, height:60))
        self.title.textAlignment = .center
        self.title.text = message
        self.title.textColor = UIColor.black
        
        switch type {
        case .warning:
            self.title.backgroundColor = .yellow
            
        case .danger:
            self.title.backgroundColor = .red
            
        case .info:
            self.title.backgroundColor = .blue
        }
        
        self.title.layer.cornerRadius = 10
        self.title.layer.masksToBounds = true
        
        return self.title
    }
    
    
    
    func warningToast( message: String, viewMain:UIView)  {
        viewMain.addSubview(self.createToast(message: message, MainView: viewMain,type: .warning))
    }
    
    func infoToast(message: String,viewMain:UIView) {
        viewMain.addSubview(self.createToast(message: message, MainView: viewMain,type: .info))
        
    }
    
    func dangerToast( message: String,viewMain:UIView)  {
        viewMain.addSubview(self.createToast(message: message , MainView: viewMain, type: .danger))
    }
    
    private init() {
        self.view = UIView()
        self.title = UILabel()
        
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("CircleView is not NSCoding compliant")
    }
    
    
    
}

enum ToasType {
    case info, danger, warning
}
