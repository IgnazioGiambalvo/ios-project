//
//  HomeViewController.swift
//  StoryboardProject
//
//  Created by claudio barbera on 16/06/2020.
//  Copyright © 2020 CodingAVision. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func doLogoutAction() {
        // TODO: agganciare logica che controlla username e password
        
        guard
            let appDelegate = UIApplication.shared.delegate as? AppDelegate,
            let login = storyboard?.instantiateViewController(withIdentifier: "loginViewControllerID")
        
        else { fatalError("Qualcosa non è andato...")
        }
        
        let navigationController = UINavigationController(rootViewController: login)
        
        appDelegate.window?.rootViewController = navigationController
    }
}
