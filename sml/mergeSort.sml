(*
Merge Sort
*)


(*
Merge:

    Input: L and M are sorted lists
    Returns: Single sorted list with the elements of L and M
*)

fun     merge(nil, M) = M
|       merge(L, nil) = L
|       merge(x::xt,y::yt) =
            if (x<y) then x::merge(xt,y::yt)
            else y::merge(x::xt, yt);

fun     split(nil) = (nil,nil)
|       split([a]) = ([a],nil) (* [a] implies a single element *)
|       split(a::b::rest) =
            let
                val (M,N) = split(rest)
            in
                (a::M,b::N)
            end;
(*
Trace execution for: split([1,2,3,4,5]);

a = 1, b = 2, rest = [3,4,5];
(M,N) = split([3,4,5]) in (1::M,2::N)

split([3,4,5])

a = 3, b = 4, rest = [5]
(M',N') = split([5]) in (3::M',4::N')
split([5]) = ([5], []) = (M', N')

(M,N) = split([3,4,5]) in (1::M, 2::N)
split([3,4,5]) = (3::[5], 4::[]) = (M,N)

split([1,2,3,4,5]) = (1::M, 2::N) = (1::[3,5], 2::[4]) = ([1,3,5],[2,4])
split([1,2,3,4,5]) = (1::M, 2:N) where (M,N) = (3::[5],4::[])
*)

fun     mergeSort(nil) = nil
|       mergeSort([a]) = [a]
|       mergeSort(L) =
            let
                val (M,N) = split(L)
            in
                merge(mergeSort(M),mergeSort(N))
            end
