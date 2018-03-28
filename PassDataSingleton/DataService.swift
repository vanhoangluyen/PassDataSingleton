//
//  DataService.swift
//  PassDataSingleton
//
//  Created by Hoang Luyen on 3/28/18.
//  Copyright © 2018 Hoang Luyen. All rights reserved.
//

import Foundation

class DataService {
    static let shared : DataService = DataService()
    private var _numbers: [Int]?
    var numbers: [Int] {
        get {
            if _numbers == nil {
                getData()
            }
            return _numbers ?? []
        }
        set {
            _numbers = newValue
        }
    }
    private func getData() {
        _numbers = []
        _numbers = [Int](1...10)
    }
    func removeData() {
        _numbers = nil
    }
}
