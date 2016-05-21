-- | Contains the protected model definition used by other modules to
-- declare the protected fields.
--
module Model.ProtectedModel.ProtectedModelInternals
   ( ProtectedModel
   , GPM.onReactiveModel
   , GPM.applyToReactiveModel
   , GPM.onEvent
   , GPM.waitFor
   )
  where

import Model.Model
import Model.ReactiveModel.ModelEvents
import qualified Hails.MVC.Model.ProtectedModel as GPM

type ProtectedModel = GPM.ProtectedModel Model ModelEvent
