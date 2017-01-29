//
//  UIView+Halogens.swift
//  Halogens
//
//  Created by 闻端 on 2017/1/29.
//  Copyright © 2017年 monk-studio. All rights reserved.
//

import UIKit

extension UIView: HalogensCompatible {}
public extension Halogens where Base: UIView {

  typealias Completion = ((Bool) -> ())

  func jump(completion: Completion? = nil) {
    base.transform = CGAffineTransform(translationX: 0, y: -10)
    springBack(completion: completion)
  }

  func shake(completion: Completion? = nil) {
    base.transform = CGAffineTransform(translationX: -10, y: 0)
    springBack()
  }

  fileprivate func springBack(completion: Completion? = nil) {
    UIView.animate(
      withDuration: 0.4,
      delay: 0,
      usingSpringWithDamping: 0.25,
      initialSpringVelocity: 1,
      options: UIViewAnimationOptions(),
      animations: { [weak self] in
        self?.base.transform = CGAffineTransform.identity
      }, completion: nil)
  }

}
