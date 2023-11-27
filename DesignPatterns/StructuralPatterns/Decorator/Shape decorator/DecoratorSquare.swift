//
//  DecoratorSquare.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 27/11/23.
//

import Foundation

class decSquare : decShape
{
  private var side: Float = 0

  init(_ side: Float)
  {
    self.side = side
  }

  public var description: String
  {
    return "A square with side \(side)"
  }
}
