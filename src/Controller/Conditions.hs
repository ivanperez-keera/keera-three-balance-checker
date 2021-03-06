-- | This module contains a series of conditions that must hold between
-- the view and the model. Most of these conditions can be separated in
-- two conditions: one that must be checked only when the model changes
-- (and updates the view accordingly), and another that must be checked
-- when the view receives an event (and updates the model accordingly).

module Controller.Conditions where

-- Internal libraries
import CombinedEnvironment

-- Internal libraries: specific conditions
import qualified Controller.Conditions.BalanceCheck as BalanceCheck
import qualified Controller.Conditions.PopupMenu    as PopupMenu
import qualified Controller.Conditions.Quit         as Quit
import qualified Controller.Conditions.Website      as Website

installHandlers :: CEnv -> IO()
installHandlers cenv = do
  BalanceCheck.installHandlers cenv
  PopupMenu.installHandlers    cenv
  Quit.installHandlers         cenv
  Website.installHandlers      cenv

