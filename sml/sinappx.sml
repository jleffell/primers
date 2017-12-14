(*
 A neat question posed on the r/sml subreddit about truncated Taylor series

 I had originally added an additional intermediate variable but cleaned it up
 to match the solution provided pretty closely

*)
fun sinappx(n,x) =
    let
        fun iter (sign, factAcc, i, result) =
            if i = (n + 1) then result
            else
                let
                    val p = 2.0*Real.fromInt(i)+1.0
                    val iSum = ( sign / factAcc ) * Math.pow(x, p)
                in
                    iter(~sign, factAcc*(p+1.0)*(p+2.0), i + 1, result + iSum)
                end
    in
        iter(1.0, 1.0, 0, 0.0)
    end;
