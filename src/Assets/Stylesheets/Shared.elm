module Assets.Stylesheets.Shared exposing (CssClass(..), appNamespace)

import Assets.Stylesheets.Shared.File exposing (FileCssClass(..))
import Assets.Stylesheets.Shared.Navigation exposing (NavigationCssClass(..))
import Assets.Stylesheets.Shared.Page exposing (PageCssClass(..))
import Html.CssHelpers


appNamespace : Html.CssHelpers.Namespace String class id msg
appNamespace =
    Html.CssHelpers.withNamespace "app"


type CssClass
    = File FileCssClass
    | Navigation NavigationCssClass
    | Page PageCssClass
