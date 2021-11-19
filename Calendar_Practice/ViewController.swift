//
//  ViewController.swift
//  Calendar_Practice
//
//  Created by 신미지 on 2021/11/18.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var datePicker: UIDatePicker!
  @IBOutlet weak var dateLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    datePicker.locale = Locale(identifier: "Kor")
    datePicker.date = Date()
    datePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)
//    datePicker.preferredDatePickerStyle = .inline
  }
  
  @objc func dateSelected() {
    print(datePicker.date)
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy년 MM월 dd일 HH시 mm분"
    let date = dateFormatter.string(from: datePicker.date)
    dateLabel.text = date
  }
}

