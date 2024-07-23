//
//  CustomPaddings.swift
//  swiftUIApp
//
//  Created by aestevezn on 22/07/24.
//

import Foundation
import SwiftUI

public struct CustomPaddings {
    static let leading  = EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0)
    static let top      = EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0)
    static let bottom   = EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0)
    static let trailing = EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16)
}

extension EdgeInsets {
    public init(_ leading: CGFloat) {
        self.init()
        self.leading = leading
    }
}
