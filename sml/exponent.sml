(* Standard Form (Single Tuple Argument) *)
fun     exponent1(x,0) = 1.0
|       exponent1(x,y) = x * exponent1(x,y-1);

(* No parantheses
This is equivalent to: real -> (int -> real), i.e. a
function which takes a real argument and
returns a function which maps an into to real

If we call exponent2 3.0 4 then:
- We get a new temp function g, of type (int -> real),
  which takes exponent y as an argument and
  returns g(y) i.e. 3.0^y which ultimately returns 81
*)
fun     exponent2 x 0 = 1.0
|       exponent2 x y = x * exponent2 x (y-1);
(* real -> int -> real *)

(* Partially Instantiated Functions *)
val g = exponent2 3.0;

g 4;

fun cube x = exponent2 x 3;

cube 2.0;
