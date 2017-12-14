fun     my_map f[] = []
|       my_map f(a::y) = (f a) :: (my_map f y);

fun     my_length([]) = 0
|       my_length(a::y) = 1 + my_length(y);

print "Hello World!";

(* Matrices *)
val x = [   [11, 12, 13, 14],
            [21, 22, 23, 24],
            [31, 32, 33, 34]];

(* Extract first row *)
fun     getFirstRow(x) = hd(x);

(* Extract first column *)
fun     getFirstCol(x) = map hd(x);

(* Extract nth element from a list *)
fun     pick([],_) = []
|       pick(a::y,0) = [a]
|       pick(a::y,n) = pick(y,n-1);

(* Extract nth row *)
fun     row(x,n) = pick(x,n);

(* Extract nth column
    - must be way to do this with map but I am having trouble
    - will return
 *)
fun     col([],n) = []
|       col(a::y,n) = pick(a,n) :: col(y,n);

fun tenthPower (x:real) =
    let
        val square = x*x;
    in
        square*square*square*square*square
    end;
