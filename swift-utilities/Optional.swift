//
//  Optional.swift
//  swift-utilities
//
//  Created by Ryuichi Tanimoto on 8/19/16.
//  Copyright © 2016 Ryuichi Tanimoto. All rights reserved.
//

import Foundation

extension Optional {
    public func reduce<U>(initial: U, @noescape combine: (U, Wrapped) -> U) -> U {
        switch self {
        case .None:
            return initial
        case .Some(let value):
            return combine(initial, value)
        }
    }
    public func forEach(@noescape action: Wrapped -> ()) {
        reduce(()) { action($1) }
    }
}
