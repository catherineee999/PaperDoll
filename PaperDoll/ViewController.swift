//
//  ViewController.swift
//  PaperDoll
//
//  Created by yangchienying on 2020/12/5.
//

import UIKit
extension UIImageView {
  func setImageColor(color: UIColor) {
    let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
    self.image = templateImage
    self.tintColor = color
  }
}

class ViewController: UIViewController {

    
    @IBOutlet weak var face: UIImageView!
    @IBOutlet weak var bodybg: UIImageView!
    @IBOutlet weak var body: UIImageView!
    @IBOutlet weak var headbg: UIImageView!
    @IBOutlet weak var head: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeHead(_ sender: UIButton) {
        print("head:"+sender.currentTitle!)
        title = sender.currentTitle!
        headbg.image = UIImage(named: "head"+title!+"bg")
        head.image = UIImage(named: "head"+title!)
    }
    
    @IBAction func changeFace(_ sender: UIButton) {
        face.image = sender.currentImage
    }
    
    @IBAction func changeBody(_ sender: UIButton) {
        print("body:"+sender.currentTitle!)
        title = sender.currentTitle!
        bodybg.image = UIImage(named: "body"+title!+"bg")
        body.image = UIImage(named: "body"+title!)
    }
    
    @IBAction func changebodyColor(_ sender: UIButton) {
        
        bodybg.setImageColor(color: sender.backgroundColor!)
        headbg.setImageColor(color: sender.backgroundColor!)
    }
    
}

