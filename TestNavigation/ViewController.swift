//
//  ViewController.swift
//  TestNavigation
//
//  Created by Md Khaled Hasan Manna on 9/8/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextViewBtnOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    
    @IBAction func nextViewTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let secondVC = storyboard.instantiateViewController(identifier: "SecondViewController") as SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: true
        )
        
        
    }
    
    
}

