//
//  Halogens.swift
//  Halogens
//
//  Created by 闻端 on 2017/1/29.
//  Copyright © 2017年 monk-studio. All rights reserved.
//

import Foundation

public protocol HalogensCompatible {
  associatedtype CompatibleType
  var hl: CompatibleType { get }
}

public extension HalogensCompatible {
  public var hl: Halogens<Self> {
    return Halogens(base: self)
  }
}

public final class Halogens<Base> {
  public let base: Base
  init(base: Base) {
    self.base = base
  }
}
