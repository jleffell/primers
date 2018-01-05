val epsilon = 0.0001
fun check_real (r1,r2) = Real.abs (r1 - r2) < epsilon

val test1 =
    case make_silly_json 2 of
        Array [Object [("n",Num x),
                       ("b",True)],
               Object [("n",Num y),
                       ("b",True)]]
        => check_real (x,2.0) andalso check_real(y,1.0)
      | _ => false
