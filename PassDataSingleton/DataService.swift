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
                getDataNumber()
            }
            return _numbers ?? []
        }
        set {
            _numbers = newValue
        }
    }
    private func getDataNumber() {
        _numbers = []
        _numbers = [Int](1...10)
    }
    func removeData(from index: IndexPath) {
        _numbers?.remove(at: index.row)
    }
    func insertData(_ data : Int) {
        _numbers?.append(data)
    }
}
