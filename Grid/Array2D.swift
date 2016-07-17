//
//  Array2D.swift
//  Grid
//
//  Created by Sonia Szeton on 7/15/16.
//  Copyright © 2016 Crater Dog Technologies. All rights reserved.
//

class Array2D<T> {
    let columns: Int
    let rows: Int
    // #2
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        // #3
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
    }
    
    // #4
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}