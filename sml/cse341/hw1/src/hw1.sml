(* Question 1 *)
fun is_older(date_1 : int * int * int, date_2 : int * int * int) =
    if (date_1 = date_2) then false else
        if (#1 date_1, #2 date_1) = (#1 date_2, #2 date_2) andalso (#3 date_1 > #3 date_2) then false else
            if (#1 date_1 = #1 date_2) andalso (#2 date_1 > #2 date_2) then false else
                if (#1 date_1 > #1 date_2) then false else true

(* fun is_older_alt(date_1 : int * int * int, date_2 : int * int * int) =
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
*)

(* Question 2 *)
fun number_in_month(dates : (int * int * int) list, month : int) =
    if null dates then 0 else
        let
            val partial = number_in_month (tl dates, month)
        in
            if #2 (hd dates) = month then 1 + partial else partial
        end

(* fun number_in_month_alt(dates : (int * int * int) list, month : int) =
    if null dates then 0 else
        number_in_month_alt(tl dates, month) + (if #2 (hd dates) = month then 1 else 0)
*)

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

(* Question 5 *)
fun dates_in_months(dates : (int * int * int) list, months : int list) =
    if null months then [] else
        dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)

(* Question 6 *)
fun get_nth(strings : string list, n : int) =
    if n = 1 then (hd strings) else get_nth(tl strings, n - 1)

(* Question 7 *)
fun date_to_string(date : int * int * int) =
    let
        val months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    in
        get_nth(months, #2 date) ^ "-" ^ (Int.toString (#3 date)) ^ "-" ^ (Int.toString (#1 date))
    end
