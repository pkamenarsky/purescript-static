module Static
  ( StaticPtr
  , static
  , derefStaticPtr
  ) where

data StaticPtr a = StaticPtr String String

foreign import staticStub :: forall a. -> StaticPtr a

static :: forall a. a -> StaticPtr a
static = staticStub

foreign import derefStaticPtrByModule :: forall a. String -> String -> a

derefStaticPtr :: forall a. StaticPtr a -> a
derefStaticPtr (StaticPtr mod ptr) = derefStaticPtrByModule mod ptr
