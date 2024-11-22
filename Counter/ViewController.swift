//
//  ViewController.swift
//  Counter
//
//  Created by Dzhamal Ibragimov on 22/11/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterHistoryText: UITextView!
    @IBOutlet weak var counterButtonZero: UIButton!
    @IBOutlet weak var counterButtonPlus: UIButton!
    @IBOutlet weak var counterButtonMinus: UIButton!
    @IBOutlet weak var counterTitle: UILabel!
    
    private var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func getCurrentDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        return formatter.string(from: Date())
    }

    @IBAction func buttonMinusTouchUp(_ sender: Any) {
        let currentDate = getCurrentDate()
        counter -= 1
        self.counterTitle.text = String(counter)
        if counter < 0 {
            self.counterHistoryText.text = String("\(currentDate): попытка уменьшить значение счётчика ниже 0")
        } else {
            self.counterHistoryText.text = String("\(currentDate): значение счётчика изменено на \(counter)")
        }
    }
    
    @IBAction func buttonPlusTouchUp(_ sender: Any) {
        let currentDate = getCurrentDate()
        counter += 1
        self.counterTitle.text = String(counter)
        if counter < 0 {
            self.counterHistoryText.text = String("\(currentDate): попытка уменьшить значение счётчика ниже 0")
        } else {
            self.counterHistoryText.text = String("\(currentDate): значение счётчика изменено на +\(counter)")
        }
    }
    @IBAction func buttonZeroTouchUp(_ sender: Any) {
        let currentDate = getCurrentDate()
        counter = 0
        self.counterTitle.text = String(counter)
        self.counterHistoryText.text = String("\(currentDate): значение сброшено")
    }
}

