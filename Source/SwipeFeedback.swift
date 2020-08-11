//
//  SwipeFeedback.swift
//
//  Created by Jeremy Koch
//  Copyright © 2017 Jeremy Koch. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
@available(tvOS, unavailable)
final class SwipeFeedback {
	enum Style {
		case light
		case medium
		case heavy
	}

	private var _feedbackGenerator: Any?

	init(style: Style) {
		switch style {
		case .light: _feedbackGenerator = UIImpactFeedbackGenerator(style: .light)
		case .medium: _feedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
		case .heavy: _feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
		}
	}

	func prepare() {
		(_feedbackGenerator as? UIImpactFeedbackGenerator)?.prepare()
	}

	func impactOccurred() {
		(_feedbackGenerator as? UIImpactFeedbackGenerator)?.impactOccurred()
	}
}
