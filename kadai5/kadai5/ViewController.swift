//
//  ViewController.swift
//  kadai5
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak  private var firstNumber: UITextField!
    @IBOutlet weak  private var secondNumber: UITextField!
    
    @IBOutlet weak private var resultLabel: UILabel!
    
    
    
    @IBAction func calculationButton(_ sender: Any) {
        
        let firstNum:Int = Int(self.firstNumber.text!) ?? 0
        //　アラートを作成
        let title1 =  "課題５"
        let message1 =  "割られる数を入力してください"
        if firstNumber.text == "" {
            
            let alert1 = UIAlertController(title: title1, message: message1,preferredStyle: .alert)
            //　OKボタンを作成追加
            let ok = UIAlertAction(title: "OK", style: .default){ (action) in self.dismiss(animated: true, completion: nil)
            }
            alert1.addAction(ok)
            //アラートを表示
            present(alert1, animated: true, completion: nil)
        }
        
        
        
        let secondNum:Int = Int(self.secondNumber.text!) ?? 1
        
        let title2 = "課題５"
        let message2 = "割る数を入力ください"
        let message3 = "割る数に０を入れないでください"
        if secondNumber.text == "" {
            let alert2 = UIAlertController(title: title2, message: message2,preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default){ (action) in self.dismiss(animated: true, completion: nil)
            }
            alert2.addAction(ok)
            present(alert2, animated: true, completion: nil)
        }
        guard secondNumber.text != "0" else {
            let alert3 = UIAlertController(title: title2, message: message3,preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default){ (action) in self.dismiss(animated: true, completion: nil)
                return
            }
            alert3.addAction(ok)
            present(alert3, animated: true, completion: nil)
            
            
            return
            
        }
        
        let result:Double = Double(firstNum / secondNum)
        resultLabel.text = String(result)
        
    }
    
    
}
    




