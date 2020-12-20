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
    @IBOutlet weak var faceORbody: UISegmentedControl!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueValue: UILabel!
    var headcolor: UIColor!
    var bodycolor: UIColor!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        headcolor = UIColor(red: CGFloat(255/255), green: CGFloat(255/255), blue: CGFloat(255/255), alpha: 1)
        bodycolor = UIColor(red: CGFloat(255/255), green: CGFloat(255/255), blue: CGFloat(255/255), alpha: 1)
    }
    
    
    @IBAction func changeHead(_ sender: UIButton) {
        print("head:"+sender.currentTitle!)
        title = sender.currentTitle!
        headbg.image = UIImage(named: "head"+title!+"bg")
        head.image = UIImage(named: "head"+title!)
        headbg.setImageColor(color: headcolor)
    }
    
    
    @IBAction func changeFace(_ sender: UIButton) {
        face.image = sender.currentImage
    }
    
    
    @IBAction func changeBody(_ sender: UIButton) {
        print("body:"+sender.currentTitle!)
        title = sender.currentTitle!
        bodybg.image = UIImage(named: "body"+title!+"bg")
        body.image = UIImage(named: "body"+title!)
        bodybg.setImageColor(color: bodycolor)
    }
    
    
    @IBAction func changebodyColor(_ sender: UIButton) {
        // change face color
        if faceORbody.selectedSegmentIndex == 0{
            headbg.setImageColor(color: sender.backgroundColor!)
        }
        // change body color
        else if faceORbody.selectedSegmentIndex == 1{
            bodybg.setImageColor(color: sender.backgroundColor!)
        }
    }
    
    
    @IBAction func changecolor(_ sender: UISlider) {
        
        redValue.text = String(Int(redSlider.value))
        greenValue.text = String(Int(greenSlider.value))
        blueValue.text = String(Int(blueSlider.value))
        
        if faceORbody.selectedSegmentIndex == 0 {
            headcolor = UIColor(red: CGFloat(Float(redValue.text!)!/255), green: CGFloat(Float(greenValue.text!)!/255), blue: CGFloat(Float(blueValue.text!)!/255), alpha: 1)
            headbg.setImageColor(color: headcolor)
            
        }
        else if faceORbody.selectedSegmentIndex == 1{
            bodycolor = UIColor(red: CGFloat(Float(redValue.text!)!/255), green: CGFloat(Float(greenValue.text!)!/255), blue: CGFloat(Float(blueValue.text!)!/255), alpha: 1)
            bodybg.setImageColor(color: bodycolor)
        }
        
        
        
        
    }
    
}

