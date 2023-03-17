//
//  ViewController2.swift
//  customviewtabel
//
//  Created by Jenish Navadiya on 12/02/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var img: UIImageView!
    var number = Int()
    var name = String()
    var photo = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        lb1.text = "\(number)"
        lb2.text = name
        img.image = photo
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
