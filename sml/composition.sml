(* Function Composition *)

fun comp(F,G,x) = G(F(x));

comp(fn x => x+3, fn y => y*y + 2*y, 4);

(* The above evaluates, but we want to get the composed function
    This can be done with the comp operator
*)


fun F x = x + 3;
fun G y = y*y + 2*y;

val H = G o F; (* H = G(F(c))) *)

map (hd o rev o explode) ["siggi", "joi", "palli", "gummi"];

(* To simulate the o operator which is a way to make higher order function *)
fun comp2 F G =
    let
        fun C x = G(F(x))
    in
        C
    end;
