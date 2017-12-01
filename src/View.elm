module View exposing (..)

import Assets.Stylesheets.Shared exposing (..)
import Assets.Stylesheets.Shared.File exposing (..)
import Assets.Stylesheets.Shared.Navigation exposing (..)
import Assets.Stylesheets.Shared.Page exposing (..)
import Dict
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (Model)
import Msgs exposing (..)
import Routing exposing (..)
import Types exposing (..)
import Views.About
import Views.File
import Views.Home


{ id, class, classList } =
    appNamespace


view : Model -> Html Msg
view model =
    div
        [ class [ PageWrapper ] ]
        [ nav
            [ class [ NavigationBar ] ]
            [ a
                [ class [ NavigationLink ]
                , href "#"
                ]
                [ text "Home" ]
            , a
                [ class [ NavigationLink ]
                , href "#about"
                ]
                [ text "About" ]
            ]
        , div
            [ Html.Attributes.class "name" ]
            [ text model.name ]
        , label
            [ for "name-input" ]
            [ text "Name: "
            , input
                [ type_ "text"
                , value model.name
                , onInput changeName
                ]
                []
            ]
        , div [ class [ FileList ] ]
            (List.map
                fileComponent
                (Dict.toList model.files)
            )
        , button
            [ class [ FileSelectionButton ]
            , onClick showFileDialog
            ]
            [ text "Select files." ]
        , div
            [ class [ PageWrapper ] ]
            [ page model ]
        ]


page : Model -> Html Msg
page model =
    case model.route of
        HomeView ->
            Views.Home.view

        AboutView ->
            Views.About.view

        FileView fileName ->
            Views.File.view fileName

        NotFoundView ->
            Views.Home.view


fileComponent : FileTuple -> Html Msg
fileComponent file =
    let
        ( fileName, fileContents ) =
            file
    in
        div
            [ class [ FileItem ] ]
            [ div
                [ class [ FileName ] ]
                [ text fileName ]
            , div
                [ class [ FileContents ] ]
                [ text fileContents ]
            ]


changeName : String -> Msg
changeName str =
    UpdateName str


showFileDialog : Msg
showFileDialog =
    let
        properties =
            [ "openFile" ]
    in
        ShowFileDialog properties
