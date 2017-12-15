(* Returns unit (like void): val it = () : unit *)
fun     printList [] = ()
|       printList(x::xt) = (
        print(Int.toString(x)); (* Side effect *)
        print("\n");            (* Side effect *)
        printList(xt)
    );
