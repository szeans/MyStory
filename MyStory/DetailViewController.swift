//
//  DetailViewController.swift
//  MyStory
//
//  Created by SEAN CHOI on 1/23/23.
//

import UIKit

class DetailViewController: UIViewController {
    var question: Question?
    
    @IBOutlet weak var labelDetail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        if let question = question {
            imageDetail.image = question.image
            labelDetail.text = question.answer
        }
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
