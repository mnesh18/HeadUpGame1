//
//  ViewController.swift
//  HeadUpGame1
//
//  Created by M's MacBook  on 10/10/2021.
//

import UIKit


/* I think I have some prblem with timer It's fast!! */




class ViewController: UIViewController {

    @IBOutlet weak var Lbrandom: UILabel!
    @IBOutlet weak var LbScore: UILabel!
    @IBOutlet weak var Btn: UIButton!
    @IBOutlet weak var LbTimer: UILabel!
    // Lbrandom to show the random names
    // LbScore to show the score result
    
    var Names = ["Sky","Sun","Tree","rabbit","Hawk","Duck","Moon","Owl"]
    // we have 8 names we shoud guess in game then the maximum score should be 8
    var result=[String]()
    var randomresult=[Int]()
    
    var Score = 0 /* To start Score */
    var RandomNames = 0 /* To start Take a random name from Names Array */
    var timer:Timer!/* To can used a timer for a game */
    var runCount:Int = 0 /* To start a timer from 0 */
    var timerCounting:Bool = false
    
    
    @objc func updateUI(){
        Lbrandom.text = Names[RandomNames]
//        if
        result.append(Names[RandomNames])
        Score += 1
        LbScore.text = "Score: \(Score)"
        
//        if Lbrandom.isHidden = false {
//            print (Names[])
//        } /* here I try to print the result fome Names array to Show in SecondViewController*/
    }
    
    
    @IBAction func BtnRandom(_ sender: Any) {
        if timer == nil {
            print("Muna")
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(firetimer), userInfo: nil, repeats: true)
        }
        Btn.setTitle("New Card", for: UIControl.State.normal)
        RandomNames = Int.random(in: 0..<Names.count)
        randomresult.append(RandomNames)
        updateUI()
        }
    
    @objc func firetimer() {
        print("Start Timer")
        print("Timer: \(runCount)")
        LbTimer.isHidden = false
        runCount += 1
        LbTimer.text = String(runCount)
        if runCount == 20 {
            timer?.invalidate()
            let SecondV = storyboard?.instantiateViewController(withIdentifier: "SecondID") as! SecondViewController
            SecondV.Score2 = Score
            SecondV.result1 = result
            SecondV.modalPresentationStyle = .fullScreen
            self.present(SecondV, animated: true, completion: nil)
//            SecondV.Lb1result = "\(Lbrandom)" /*here I try to writ line call to print currect result on another viwe */
            
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

