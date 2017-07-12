port module Ports.Filesystem exposing (..)

import Types exposing (..)

port readFile : String -> Cmd msg

port readFileResult : (FileTuple -> msg) -> Sub msg
