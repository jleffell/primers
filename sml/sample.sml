fun     my_map f[] = []
|       my_map f(a::y) = (f a) :: (my_map f y);

fun     my_length([]) = 0
|       my_length(a::y) = 1 + my_length(y);
