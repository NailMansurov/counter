//
//  ViewController.swift
//  Counter
//
//  Created by Наиль Мансуров on 25.01.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var changesTextView: UITextView!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    // Переменная для счетчика.
    private var count: Int = 0
    
    // Функция для добавления даты и времени.
    private func addDateTime() -> String {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        return dateFormatter.string(from: currentDate)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changesTextView.isScrollEnabled = true
        changesTextView.isEditable = false
        
        // Do any additional setup after loading the view.
    }

    // Действие при нажатии кнопки "-".
    @IBAction func minusButtonDidTap(_ sender: Any) {
        if count > 0 {
            count -= 1
            counterLabel.text = "Значение счётчика: \(count)"
            changesTextView.text += "\n\(addDateTime()): значение изменено на -1"
        } else {
            count = 0
            changesTextView.text += "\n\(addDateTime()): попытка уменьшить значение счётчика ниже 0"
        }
    }
    
    // Действие при нажатии кнопки "+".
    @IBAction func plusButtonDidTap(_ sender: Any) {
        count += 1
        counterLabel.text = "Значение счётчика: \(count)"
        changesTextView.text += "\n\(addDateTime()): значение изменено на +1"
    }
    
    // Действие при нажатии кнопки "Reset".
    @IBAction func resetButtonDidTap(_ sender: Any) {
        count = 0
        counterLabel.text = "Значение счётчика: \(count)"
        changesTextView.text += "\n\(addDateTime()): значение сброшено"
    }

}

