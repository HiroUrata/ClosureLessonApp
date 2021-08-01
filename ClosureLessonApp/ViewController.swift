//
//  ViewController.swift
//  ClosureLessonApp
//
//  Created by UrataHiroki on 2021/08/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var upTextField: UITextField!
    @IBOutlet weak var underTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    func kansu(s1:String,s2:String,closure:([String],[String]) -> String ) -> String{
        
        return closure([s1,s2],[s2,s1])
        
    }
    
    @IBAction func addLabeiText(_ sender: UIButton) {
        
        resultLabel.text = kansu(s1: upTextField.text!, s2: underTextField.text!, closure: { (array1,array2) -> String in
            
            return array1[0] + array2[1] + array1[1] 
            
        })
    
    }

}


//引数にクロージャーを持たせた関数
//func kansu(s1:String,s2:String,closure:(String,String) -> String ) -> String{
//
//return closure(s1,s2)
//
//}
//
//@IBAction func addLabeiText(_ sender: UIButton) {
//
//resultLabel.text = kansu(s1: upTextField.text!, s2: underTextField.text!, closure: { (s3,s4) -> String in
//
//    return s3 + s4
//
//})
//
//}
