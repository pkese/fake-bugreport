(* -- Fake Dependencies paket-inline
source https://nuget.org/api/v2
source ../../../nuget/dotnetcore

nuget FSharp.Core

nuget Fake.Core.Targets prerelease
nuget Fake.Core.Tracing prerelease
-- Fake Dependencies -- *)

// include Fake lib
#r @"../packages/FAKE/tools/FakeLib.dll"

open Fake
open Fake.Core.Trace
open Fake.Core.Targets

// Default target
Target "Default" (fun _ ->
    trace "Hello World from FAKE"

)


// start build
RunTargetOrDefault "Default"
