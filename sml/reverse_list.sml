fun     rev([]) = []
|       rev(x::xs) = rev(xs) @ [x]

fun     rev_tail_call(x) =
    let
        fun     aux([], acc) = acc
        |       aux(y::ys, acc) = aux(ys,y::acc)
    in
        aux(x,[])
    end
