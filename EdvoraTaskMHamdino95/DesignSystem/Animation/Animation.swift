//
//  Animation.swift
//  DesignSystem
//
//  Created by A One Way To Allah on 10/5/21.
//

import SwiftUI

extension Animation {
    static let easeInOutRegular = Self.easeInOut(duration: AnimDuration.regular)
    static let easeInOutSlow = Self.easeInOut(duration: AnimDuration.slow)
    static let customCurve = Self.timingCurve(0, 0.8, 0.2, 1,
                                            duration: AnimDuration.slow)
    static let frameSpring = Self.interpolatingSpring(
                                            mass: 0.05,
                                             stiffness: 4.5,
                                             damping: 2,
                                             initialVelocity: 5)
}
