//
//  ViewController.swift
//  kadai5
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var firstNumber: UITextField!
    @IBOutlet weak private var secondNumber: UITextField!
    
    @IBOutlet weak private var resultLabel: UILabel!

    @IBAction func calculationButton(_ sender: Any) {
        
        guard let firstNum = Int(self.firstNumber.text!) else {
            presentAlert(message: "割られる数を入力してください")
            return
        }

        guard let secondNum = Int(self.secondNumber.text!) else {
            presentAlert(message: "割る数を入力ください")
            return
        }
        
        guard secondNum != 0 else {
            presentAlert(message: "割る数に０を入れないでください")
            return
        }
        
        let result:Double = Double(firstNum / secondNum)
        resultLabel.text = String(result)
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)

        //　OKボタンを作成追加
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)

        //アラートを表示
        present(alert, animated: true, completion: nil)
    }
}
