//
//  ViewController.swift
//  Example
//
//  Created by 闻端 on 2017/1/29.
//  Copyright © 2017年 monk-studio. All rights reserved.
//

import UIKit
import Halogens

class ViewController: UIViewController {

  let v = UIView()

  override func viewDidLoad() {
    super.viewDidLoad()
    v.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
    v.backgroundColor = UIColor.gray
    view.addSubview(v)
  }


  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    v.hl.jump()
//    v.hl.shake()
  }

}

