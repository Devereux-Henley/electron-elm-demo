port module Ports.Dialog exposing (..)

port openDialog : List String -> Cmd msg

port dialogResult : (String -> msg) -> Sub msg
