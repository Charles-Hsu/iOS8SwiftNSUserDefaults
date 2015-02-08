//
//  ViewController.swift
//  iOS8SwiftNSUserDefaults
//
//  Created by Charles Hsu on 2/8/15.
//  Copyright (c) 2015 Loxoll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let kUserNameKey = "userName"

  @IBOutlet weak var userNameTextfield: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func readUserName(sender: AnyObject) {
    var userName:String? = getUserName()
    if userName != nil {
      userNameTextfield.text = userName
    }
  }
  
  
  @IBAction func writeUserName(sender: AnyObject) {
    writeUserName(userNameTextfield.text)
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func getUserName() -> String? {
    let defaults = NSUserDefaults.standardUserDefaults()
    if let name = defaults.stringForKey(kUserNameKey) {
      return name
    }
    return nil
  }

  func writeUserName(name: String) {
    let defaults = NSUserDefaults.standardUserDefaults()
    defaults.setObject(name, forKey: kUserNameKey)
  }
  
  
  
}

