//
//  SecondViewController.swift
//  HeadUpGame1
//
//  Created by M's MacBook  on 10/10/2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var Lb1result: UILabel!
    @IBOutlet weak var Lb2Score: UILabel!
    
    var Score2: Int = 0
    var result1:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Lb2Score.text = "Score:\(Score2)"
        Lb1result.text = String(describing: result1) /* I try print the right names from Names Array in Lb1result */
    }
    
    @IBAction func RestartBtn(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

//        if segue.identifier == "goto1" {
//            ViewController()
//        }
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
