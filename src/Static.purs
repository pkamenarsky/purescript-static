module Static
  ( StaticPtr
  , StaticValue
  , StaticPtrMap
  , static
  , derefStaticPtr
  ) where

import Prelude
import Data.Map as M
import Unsafe.Coerce (unsafeCoerce)

data StaticPtr a = StaticPtr String String

data StaticValue = StaticValue (forall a. a)

static :: forall a. a -> StaticPtr a
static = unsafeCoerce unit

type StaticPtrMap = M.Map

foreign import derefStaticPtrByModule :: forall a. String -> String -> a

derefStaticPtr :: forall a. StaticPtr a -> a
derefStaticPtr (StaticPtr mod ptr) = derefStaticPtrByModule mod ptr
