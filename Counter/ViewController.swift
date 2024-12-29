//
//  ViewController.swift
//  Counter
//
//  Created by Максим Ботин on 29.12.2024.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var history: UITextView!
    let date = Date()
    @IBOutlet weak var countLable: UILabel!
    @IBOutlet weak var plus: UIButton!
    
    var Counter: Int = 0
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var minus: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        plus.tintColor = .red
        zero.tintColor = .green
        countLable.text = String(Counter)
        history.text = "История изменеий \n"
        history.isEditable = false
    }
    
  
    @IBAction private func plusButton(_ sender: Any) {
        Counter += 1
        countLable.text = String(Counter)
        history.text += "\(date): значение изменено на +1 \n"
    }

    @IBAction private func zeroButton(_ sender: Any) {
        Counter = 0
        countLable.text = String(Counter)
        history.text += "\(date): значение сброшено \n"
    }
    @IBAction private func minusButton(_ sender: Any) {
        if Counter > 0{
            Counter -= 1
            history.text += "\(date): значение изменено на -1 \n "
        } else {
            history.text += "\(date): попытка уменьшить значение счетчика ниже 0 \n"
            Counter = 0
        }
        countLable.text = String(Counter)
    }
    
    
}
