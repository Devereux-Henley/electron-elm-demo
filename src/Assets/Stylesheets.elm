port module Assets.Stylesheets exposing (..)

import Assets.Stylesheets.App
import Css.File exposing (CssFileStructure, CssCompilerProgram)


port files : CssFileStructure -> Cmd msg


fileStructure : CssFileStructure
fileStructure =
    Css.File.toFileStructure
        [ ( "app.css", Css.File.compile [ Assets.Stylesheets.App.css ] ) ]


main : CssCompilerProgram
main =
    Css.File.compiler files fileStructure
