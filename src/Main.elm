module Main exposing (..)

import Html
import Html.Events


type alias Model =
    Int


type Msg
    = Increment
    | Decrement


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = 0
        , view = view
        , update = update
        }


view : Model -> Html.Html Msg
view model =
    Html.div []
        [ Html.button [ Html.Events.onClick Increment ] [ Html.text "+" ]
        , Html.button [ Html.Events.onClick Decrement ] [ Html.text "-" ]
        , Html.p [] [ Html.text <| "Count: " ++ toString model ]
        ]


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1
