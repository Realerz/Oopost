//
//  ThiredViewController.swift
//  ProjectGroup
//
//  Created by student on 14/11/2562 BE.
//  Copyright © 2562 student. All rights reserved.
//

import UIKit

class ThiredViewController: UIViewController {

    @IBOutlet var zoneCol: [UIButton]!
    
    
    @IBAction func zoneSelect(_ sender: UIButton) {
        zoneCol.forEach{ (button) in
            UIView.animate(withDuration: 0.3,
                           animations:{
                            button.isHidden = !button.isHidden
                            self.view.layoutIfNeeded()
            })
        }
    }
    
    enum  zones: String {
        case asia = "Asia"
        case europe = "Europe"
        case america = "America"
        case africa = "Africa"
        case australia = "Australia"
    }
    
    @IBAction func zoneTabbed(_ sender: UIButton) {
        guard let title = sender.currentTitle,
            let Z = zones(rawValue: title)
            else{
                return
        }
        
        switch Z {
        case .asia:
            print("Asia")
        case .europe:
            print("Europe")
        case .america:
            print("America")
        case .africa:
            print("Africa")
        case .australia:
            print("Australia")
            
        }
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
