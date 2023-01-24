//
//  ViewController.swift
//  MyStory
//
//  Created by SEAN CHOI on 1/20/23.
//

import UIKit

class ViewController: UIViewController {

    
    let what = Question(image: UIImage(named: "os"), answer: "I am from the open source operating system, Linux!")
    let who = Question(image: UIImage(named: "lewing"), answer: "I was created by Larry Ewing in a Linux logo competition. I was first seen in 1996.")
    let whereFind = Question(image: UIImage(named: "tuxgames"), answer: "Besides being the mascot of Linux, I have taken the role simliar to what Mario holds of Nintendo. You can find me in games such as Tux Racer and more!")
    
    var questions: [Question] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questions = [what, who, whereFind]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "openSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "openSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.question = questions[0]
            } else if tappedView.tag == 1 {
                detailViewController.question = questions[1]
            } else if tappedView.tag == 2 {
                detailViewController.question = questions[2]
            } else {
                print("No question was tapped, please check your selection.")
            }
        }
    }
}

