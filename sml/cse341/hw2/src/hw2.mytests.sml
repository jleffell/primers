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

val test2 = assoc ("foo", [("bar",17),("foo",19)]) = SOME 19

val test3 = case dot (json_obj, "ok") of SOME True => true |  _ => false

val test4 = one_fields json_obj = rev ["foo","bar","ok"]

val test5 = not (no_repeats ["foo","bar","foo"])
