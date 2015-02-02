//
//  thing.swift
//  simple c
//
//  Created by David Wagner on 02/02/2015.
//  Copyright (c) 2015 David Wagner. All rights reserved.
//

func do_swift_thing(iterations:Int) -> Int {
    var foo : Int = 0
    for i in 0..<iterations {
        foo |= i * i
    }
    return foo
}
