//
//  Optional.swift
//  swift-utilities
//
//  Created by Ryuichi Tanimoto on 8/19/16.
//  Copyright © 2016 Ryuichi Tanimoto. All rights reserved.
//

import Foundation

extension Optional {
    public func reduce<U>(_ initial: U, combine: (U, Wrapped) -> U) -> U {
        switch self {
        case .none:
            return initial
        case .some(let value):
            return combine(initial, value)
        }
    }
    public func forEach(_ action: (Wrapped) -> ()) {
        reduce(()) { action($1) }
    }
}
