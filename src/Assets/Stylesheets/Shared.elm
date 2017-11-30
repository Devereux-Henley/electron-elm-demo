module Assets.Stylesheets.Shared exposing (..)

import Html.CssHelpers


appNamespace : Html.CssHelpers.Namespace String class id msg
appNamespace =
    Html.CssHelpers.withNamespace "app"

type CssClasses
    = PageWrapper
    | Navigation
    | NavigationLink
    | File
    | FileContents
    | FileList
    | FileName
    | FileSelectionButton
