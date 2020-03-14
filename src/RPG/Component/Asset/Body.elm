module RPG.Component.Asset.Body exposing (get)

import Playground exposing (Shape, group)
import Playground.Extra
import RPG.Component.Action as Action exposing (Action, Pose(..))
import RPG.Component.Body exposing (Body(..))


get : Body -> Action -> Shape
get body action =
    let
        i =
            Action.index action
    in
    [ shadow i
    , case body of
        Male eyes ears nose ->
            maleBase i

        MaleOrc ->
            maleOrc i

        MaleDrake ->
            maleDrake i

        MaleLizard ->
            maleLizard i

        Skeleton ->
            skeleton i

        Zombie blood ->
            zombie i

        Female eyes ears nose ->
            femaleBase i

        FemaleOrc ->
            femaleOrc i

        FemaleDrake ->
            femaleDrake i

        FemaleLizard ->
            femaleLizard i
    ]
        |> group


tile url =
    Playground.Extra.tile 64 64 ("assets/lpc/body/" ++ url)


shadow =
    tile <| "shadow.png"


maleBase =
    tile <| "male/base.png"


maleOrc =
    tile <| "male/orc.png"


maleDrake =
    tile <| "male/drake.png"


maleLizard =
    tile <| "male/lizard.png"


skeleton =
    tile <| "skeleton.png"


zombie =
    tile <| "zombie.png"


femaleBase =
    tile <| "female/base.png"


femaleOrc =
    tile <| "female/orc.png"


femaleDrake =
    tile <| "female/drake.png"


femaleLizard =
    tile <| "female/lizard.png"