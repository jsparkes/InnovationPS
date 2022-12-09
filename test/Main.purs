module Test.Main where

import Prelude

import Cards (readJsonFile)
import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class.Console (log)
import Test.Spec.Discovery (discover)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner (runSpec)

main :: Effect Unit
main = discover "Test\\.*Spec" >>= runSpec [ consoleReporter ] >>> launchAff_
