module Static
  ( StaticPtr
  , static
  , derefStaticPtr
  ) where

data StaticPtr a = StaticPtr String String

static :: forall a. a -> StaticPtr a
static a = static a

foreign import derefStaticPtrByModule :: forall a. String -> String -> a

derefStaticPtr :: forall a. StaticPtr a -> a
derefStaticPtr (StaticPtr mod ptr) = derefStaticPtrByModule mod ptr
