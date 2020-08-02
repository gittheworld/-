//
//  QViewController.swift
//  華府危機
//
//  Created by danny on 2020/8/2.
//

import UIKit


class QViewController: UIViewController {
    var data = Data()
    @IBOutlet weak var ansTextField: UITextField!
    @IBOutlet weak var quizLabelView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        data.dice = Int.random(in: 0...data.coupletQ.count-1)
        quizLabelView.text = data.coupletQ[data.dice]
        quizLabelView.numberOfLines = 3
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func tryagain(_ sender: Any) {
        data.dice = Int.random(in: 0...data.coupletQ.count-1)
        quizLabelView.text = data.coupletQ[data.dice]
    }


    @IBSegueAction func showResult(_ coder: NSCoder) -> AViewController? {
        let controller = AViewController(coder: coder)
        controller?.q = data.coupletQ[data.dice]
        controller?.a = ansTextField.text
        controller?.ans = data.coupletA[data.dice]
        return controller
        
    }
}
