//
//  Collection+Extension.swift
//  Algorithms
//
//  Created by Abanoub Emil on 04/09/2021.
//

import Foundation

extension Collection {

    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
