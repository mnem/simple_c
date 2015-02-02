# Simple C
A simple test of interfacing C with Swift code. This trivial example only exposes 1 C function from `thing.c` via `thing.h` which is `#include`'ed in the Xcode created bridging header. After including `thing.h` in the bridging header, items are automagically available in Swift.

The app has 2 buttons which execute algorithmically identical functions, one written in Swift and one in C. The C code runs considerably faster than the Swift equivalent in debug mode. In release mode, they both execute at a similar speed.
