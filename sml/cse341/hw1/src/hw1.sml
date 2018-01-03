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
