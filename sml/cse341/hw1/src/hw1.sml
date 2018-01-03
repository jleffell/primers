(* Question 1 *)
fun is_older(date_1 : int * int * int, date_2 : int * int * int) =
    if (date_1 = date_2) then false else
        if (#1 date_1, #2 date_1) = (#1 date_2, #2 date_2) andalso (#3 date_1 > #3 date_2) then false else
            if (#1 date_1 = #1 date_2) andalso (#2 date_1 > #2 date_2) then false else
                if (#1 date_1 > #1 date_2) then false else true

fun is_older2(date_1 : int * int * int, date_2 : int * int * int) =
    let fun date_sum(date : int * int * int) =
        let
            val max_months = 12
            val max_days = 31
        in
            (max_days * (max_months * #1 date + #2 date) + #3 date)
        end
    in
        date_sum date_1 < date_sum date_2
    end

(* Question 2 *)
fun number_in_month(dates : (int * int * int) list, month : int) =
    if null dates then 0 else
        let
            val partial = number_in_month (tl dates, month)
        in
            if #2 (hd dates) = month then 1 + partial else partial
        end

fun number_in_month2(dates : (int * int * int) list, month : int) =
    if null dates then 0 else
        number_in_month2(tl dates, month) + (if #2 (hd dates) = month then 1 else 0)

(* Question 3 *)
fun number_in_months(dates : (int * int * int) list, months : int list) =
    if null months then 0 else
        number_in_month(dates, hd months) + number_in_months(dates, tl months)

(* Question 4 *)
fun dates_in_month(dates : (int * int * int) list, month : int) =
    if null dates then [] else
        let
            val rem = dates_in_month(tl dates, month)
        in
            if #2 (hd dates) = month then (hd dates) :: rem else rem
        end