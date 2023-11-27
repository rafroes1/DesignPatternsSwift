//
//  decCircle.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 27/11/23.
//

import Foundation

class decCircle : decShape
{
  private var radius: Float = 0

  init(_ radius: Float)
  {
    self.radius = radius
  }

  func resize(_ factor: Float)
  {
    radius *= factor
  }

  public var description: String
  {
    return "A circle of radius \(radius)"
  }
}
