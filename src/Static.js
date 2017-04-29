"use strict";

exports.derefStaticPtrByModule = function(module) {
  return function(ptr) {
    return require(module).static_ptr_table[ptr];
  };
}
