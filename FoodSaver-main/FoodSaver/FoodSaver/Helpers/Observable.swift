//
//  Observable.swift
//  FoodSaver
//
//  Created by Prashamsa on 01/10/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//

import Foundation

class Observable<T> {
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    private var listener: ((T) -> Void)?
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ closure: @escaping (T) -> Void) {
        listener = closure
    }
}
