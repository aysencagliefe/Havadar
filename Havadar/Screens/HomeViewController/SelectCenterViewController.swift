//
//  SelectCenterViewController.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 18.12.2024.
//

import UIKit

class SelectCenterViewController: UIViewController {
        
    var tapGesture: UITapGestureRecognizer!
    
    
    @IBOutlet weak var citySearchBar: UISearchBar!
    @IBOutlet weak var selectCityTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        tapGesture.isEnabled = false
        view.addGestureRecognizer(tapGesture)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow() {
        tapGesture.isEnabled = true
    }
    
    @objc func keyboardWillHide() {
        tapGesture.isEnabled = false
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }



}


