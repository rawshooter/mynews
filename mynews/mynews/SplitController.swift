//
//  SplitController.swift
//  mynews
//
//  Created by Thomas Alexnat on 14.01.18.
//  Copyright © 2018 Thomas Alexnat. All rights reserved.
//

import UIKit

class SplitController: UISplitViewController {


    @IBOutlet weak var tab: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let attributes: [NSAttributedStringKey : Any] =
            [
                
       
                    .font: UIFont.systemFont(ofSize: 48, weight: .bold)
        ]
        
       //         .font: UIFont(name: "Courier", size: 20.0) ?? UIFont.systemFont(ofSize: 12, weight: .bold)
        
        
        
        tab.setTitleTextAttributes(attributes, for: .normal)
        tab.setTitleTextAttributes(attributes, for: .selected)
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
