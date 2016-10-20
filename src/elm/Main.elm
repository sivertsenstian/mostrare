module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Routing exposing (Route)
import Navigation


-- APP


main : Program Never
main =
    Navigation.program Routing.parser
        { init = init
        , view = view
        , update = update
        , urlUpdate = urlUpdate
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { route : Routing.Route }


init : Result String Route -> ( Model, Cmd Msg )
init result =
    let
        currentRoute =
            Routing.routeFromResult result
    in
        ( { route = currentRoute }, Cmd.none )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case Debug.log "update!" msg of
        _ ->
            ( model, Cmd.none )


urlUpdate : Result String Route -> Model -> ( Model, Cmd Msg )
urlUpdate result model =
    let
        currentRoute =
            Routing.routeFromResult result
    in
        case Debug.log "urlupdate!" currentRoute of
            _ ->
                ( { model | route = currentRoute }, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "container-fluid" ]
        [ div [ class "row" ]
            [ div [ class "col-xs-12 text-xs-center" ]
                [ h1 [] [ text "header" ] ]
            ]
        , div [ class "row" ]
            [ div [ class "col-xs-12 text-xs-center" ]
                [ body model ]
            ]
        , div [ class "row" ]
            [ div [ class "col-xs-12 text-xs-center" ]
                [ span [] [ text "footer" ] ]
            ]
        ]


body : Model -> Html Msg
body model =
    case Debug.log "render route!" model.route of
        Routing.IndexRoute ->
            h2 [] [ text "Index Route!" ]

        Routing.NotFoundRoute ->
            h2 [] [ text "404 - Not found!" ]



-- CSS STYLES


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
