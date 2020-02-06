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
    
    @IBAction func nextToPush(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "DetailViewController", bundle: Bundle.main).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func nextNCPresenter(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "DetailViewController", bundle: Bundle.main).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        navigationController?.present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func nextVCtoAppdelegate(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "DetailViewController", bundle: Bundle.main).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        let appDelegate = UIApplication.shared.delegate
        appDelegate?.window?!.rootViewController = vc
    }
    
    @IBAction func nextToTabBar(_ sender: Any) {
        let menuTabBarViewController = MenuTabBarController.initFromStoryboard()
        navigationController?.present(menuTabBarViewController, animated: true, completion: nil)
       
    }
    @IBAction private func nextToExtention(_ sender: UIButton) {
        let detailViewController = DetailViewController.initFromStoryboard()
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}

