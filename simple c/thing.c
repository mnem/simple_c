//
//  thing.c
//  simple c
//
//  Created by David Wagner on 02/02/2015.
//  Copyright (c) 2015 David Wagner. All rights reserved.
//

#include "thing.h"

uint64_t do_c_thing(int32_t iterations) {
    uint64_t foo = 0;
    for (uint64_t i = 0; i < iterations; i++) {
        foo |= i * i;
    }
    return foo;
}
