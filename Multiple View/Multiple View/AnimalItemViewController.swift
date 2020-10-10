//
//  AnimalItemViewController.swift
//  Multiple View
//
//  Created by Devita setyaningrum on 07/10/20.
//

import UIKit

class AnimalItemViewController: UIViewController {

    @IBOutlet weak var imgThumbnail: UIImageView!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var txtType: UILabel!
    
    var img:String?
    var name:String?
    var type: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imgThumbnail.image = UIImage(named: img as! String)
        txtName.text = "\(name as! String)"
        txtType.text = "\(type as! String)"
    }
    
    @IBAction func btndetail(_ sender: Any) {
        let alert = UIAlertController(title: "Confirm", message: "This \(name as! String) type is \(type as! String)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
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
