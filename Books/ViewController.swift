//
//  ViewController.swift
//  Books
//
//  Created by SDS-017 on 2017. 4. 27..
//  Copyright © 2017년 SDS-017. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        openAlert()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func openAlert() {
        let alert = UIAlertController(title: "Wassssup", message: "This is Books. Enjoy! ", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
//        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: {
//            (action: UIAlertAction) -> () in
//            print("pushed \(action.title)")
//            self.view.backgroundColor = UIColor.blue
//        })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default) {
            (action: UIAlertAction) -> () in
            self.view.backgroundColor = UIColor.blue
        }
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
//        self.present(alert, animated: true, completion: nil)
        self.present(alert, animated: true) { 
            Timer.scheduledTimer(withTimeInterval: 3, repeats: false, block: { (Timer) in
                alert.dismiss(animated: true, completion: {
                    print("dismissing alert")
                })
            })
            
        }
    }
    
    
}

