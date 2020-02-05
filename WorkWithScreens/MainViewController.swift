//
//  ViewController.swift
//  WorkWithScreens
//
//  Created by Egor Syrtcov on 2/5/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func nextVCButton(_ sender: UIButton) {
        let detailViewController = DetailViewController.initFromStoryboard()
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}

