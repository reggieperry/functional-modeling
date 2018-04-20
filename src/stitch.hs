{-# LANGUAGE TypeOperators, DataKinds, KindSignatures, TypeFamilies,
    PolyKinds, TypeInType, UndecidableInstances, GADTs,
    ScopedTypeVariables, InstanceSigs, TypeApplications,
    TypeFamilyDependencies, ConstraintKinds,
    TemplateHaskell, AllowAmbiguousTypes #-}

{-# LANGUAGE FlexibleContexts, TypeSynonymInstances, FlexibleInstances,
    MultiParamTypeClasses, FunctionalDependencies #-}

{-# OPTIONS_GHC -fdefer-type-errors #-}
{-# OPTIONS_GHC -fprint-expanded-synonyms #-}
{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}

module Stitch where

import Data.Kind(Type)

data G :: Type -> Type where
  BoolCon :: G Bool
  IntCon  :: G Int

match :: forall a. G a -> a
match BoolCon = True
match IntCon  = 42

