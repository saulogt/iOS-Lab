//
//  TestBlockViewController.swift
//  iOS-Lab
//
//  Created by Saulo Tauil on 2016-11-04.
//  Copyright © 2016 Saulo Tauil. All rights reserved.
//

import UIKit

class TestBlockViewController: UIViewController {
    
    var block1 : ((Void)->Void)?
    var block2 : ((Void)->Void)?
    var block3 : ((Void)->Void)?
   
    @IBAction func startUnowned(_ sender: Any) {
        
        self.block1 = { [unowned self] in
            sleep(2);
            
            self.title = "uhuu!"
            print("foi!");
        }

        
        DispatchQueue.global().async(execute: block1!);
    }
    
    
    @IBAction func startWeak(_ sender: Any) {
        
        block2 = { [weak self] in
            sleep(2);
            
            self?.title = "uhuu!"
            print("foi!");
        }
        
        DispatchQueue.global().async(execute: self.block2!);
        
    }
    @IBAction func startStrong(_ sender: Any) {
        
        self.block3 = {
            sleep(2);
            
            self.title = "uhuu!"
            print("foi!");
        }
        
        
        DispatchQueue.global().async(execute: block3!);

        
    }
    
    deinit {
        print("ViewController deinit");
    }
 
    ///MARK: - VC lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
