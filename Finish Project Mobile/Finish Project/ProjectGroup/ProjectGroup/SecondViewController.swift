//
//  SecondViewController.swift
//  ProjectGroup
//
//  Created by student on 8/11/2562 BE.
//  Copyright © 2562 student. All rights reserved.
//

import UIKit


var nameZ = ""
class SecondViewController: UIViewController {
    
    @IBOutlet var zoneCol: [UIButton]!
    
    
    @IBAction func selectBut(_ sender: UIButton) {
        //Action for Button
        zoneCol.forEach{(button) in
            //set time to show
            UIView.animate(withDuration: 0.3, animations:{
                //Each button showing
                button.isHidden = !button.isHidden
                
                self.view.layoutIfNeeded()
            })
        }
    }
    
    //enum mean declear case.
    enum names: String{
        case Asia = "Asia"
        case Europe = "Europe"
        case America = "America"
        case Africa = "Africa"
        case Australia = "Australia"
    }
    
    
    
    @IBAction func NameTabbed(_ sender: UIButton) {
        guard  let title = sender.currentTitle,
            let N = names(rawValue: title)
            else {
                return
        }
        
        switch N {
            
        case .Asia:
            print("Asia")
        case .Europe:
            print("Europe")
        case .America:
            print("America")
        case .Africa:
            print("Africa")
        case .Australia:
            print("Australia")
        }
       
    }
    
    
    @IBAction func Asia(_ sender: Any) {
        nameZ = "Asia"
    }
    
    @IBAction func Eu(_ sender: Any) {
        nameZ = "Europe"
    }
    
    
    @IBAction func Ameri(_ sender: Any) {
        nameZ = "America"
    }
    
    
    @IBAction func Afri(_ sender: Any) {
        nameZ = "Africa"
    }
    
    
    @IBAction func Austra(_ sender: Any) {
        nameZ = "Australia"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
