//
//  ViewController.swift
//  UITextField_Delegate
//
//  Created by D7703_19 on 2018. 3. 22..
//  Copyright © 2018년 D7703_19. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var lblHello: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // textfield 도움말 표시
        txtName.placeholder = "입력하세요"
        // textfield 키보드 모드 설정
        txtName.clearButtonMode = UITextFieldViewMode.whileEditing
        txtName.delegate = self
    }

    @IBAction func btClick(_ sender: Any) {
        
        // textfield의 입력값을 label에 나타내기
        lblHello.text = "HELLO " + txtName.text!
        // textfield의 값을 초기화
        txtName.text = ""
        // textfidle의 값을 입력받고난 후 키보드 없애기
        txtName.resignFirstResponder()
    }
    
    // background view를 touch하면 키패드가 사라짐
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtName.resignFirstResponder()
        view.backgroundColor = UIColor.yellow
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtName.resignFirstResponder()
        view.backgroundColor = UIColor.green
        return true
    }
    // clear button을 눌렀을때 호출
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        txtName.backgroundColor = UIColor.darkGray
        return true
    }
    
}

