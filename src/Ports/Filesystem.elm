port module Ports.Filesystem exposing (..)

port readFile : String -> Cmd msg

port readFileResult : (String -> msg) -> Sub msg
