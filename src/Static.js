"use strict";

exports.staticStub = function(a) {
  throw new Error("staticStub called; this shouldn't happen");
}

exports.derefStaticPtrByModule = function(module) {
  return function(ptr) {
    return PS[module].static_ptr_table[ptr];
  };
}
