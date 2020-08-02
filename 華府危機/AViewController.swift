//
//  AViewController.swift
//  華府危機
//
//  Created by danny on 2020/8/2.
//

import UIKit
import AVFoundation

class AViewController: UIViewController {
    @IBOutlet weak var ansImage: UIImageView!
    @IBOutlet weak var qLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!
    var q:String!
    var a:String!
    var ans:String!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        if a == ans{
            ansImage.image = UIImage(named: "winner.jpg")
            qLabel.text =  q!
            qLabel.numberOfLines = 3
            aLabel.text = "正確答案：\(ans!)"
            aLabel.numberOfLines = 3
        }else{
            ansImage.image = UIImage(named: "loser.jpg")
            qLabel.text =  q!
            qLabel.numberOfLines = 3
            aLabel.text = "正確答案是\n：\(ans!)"
            aLabel.numberOfLines = 3
        }
        // Do any additional setup after loading the view.
    }

    
}
