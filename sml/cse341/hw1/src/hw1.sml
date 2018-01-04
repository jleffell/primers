(* Question 1 *)
fun is_older(date_1 : int * int * int, date_2 : int * int * int) =
    if (date_1 = date_2) then false else
        if (#1 date_1, #2 date_1) = (#1 date_2, #2 date_2) andalso (#3 date_1 > #3 date_2) then false else
            if (#1 date_1 = #1 date_2) andalso (#2 date_1 > #2 date_2) then false else
                if (#1 date_1 > #1 date_2) then false else true

(*
fun is_older_alt(date_1 : int * int * int, date_2 : int * int * int) =
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
    if null dates
    then 0
    else
        let
            val partial = number_in_month (tl dates, month)
        in
            if #2 (hd dates) = month then 1 + partial else partial
        end

(*
fun number_in_month_alt(dates : (int * int * int) list, month : int) =
    if null dates then 0 else
        number_in_month_alt(tl dates, month) + (if #2 (hd dates) = month then 1 else 0)
*)

(* Question 3 *)
fun number_in_months(dates : (int * int * int) list, months : int list) =
    if null months
    then 0
    else number_in_month(dates, hd months) + number_in_months(dates, tl months)

(* Question 4 *)
fun dates_in_month(dates : (int * int * int) list, month : int) =
    if null dates
    then []
    else
        let
            val rem = dates_in_month(tl dates, month)
        in
            if #2 (hd dates) = month then (hd dates) :: rem else rem
        end

(* Question 5 *)
fun dates_in_months(dates : (int * int * int) list, months : int list) =
    if null months then [] else dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)

(* Question 6 *)
fun get_nth(strings : string list, n : int) =
    if n = 1 then (hd strings) else get_nth(tl strings, n - 1)

(* Question 7 *)
fun date_to_string(date : int * int * int) =
    let
        val months = ["January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"]
    in
        get_nth(months, #2 date) ^ "-" ^ (Int.toString (#3 date)) ^ "-" ^ (Int.toString (#1 date))
    end

(* Question 8 *)
fun number_before_reaching_sum(sum : int, nums : int list) =
    let
        val num = hd nums
    in
        if num < sum then 1 + number_before_reaching_sum(sum - num, tl nums) else 0
    end

(* Question 9 *)
fun what_month(day : int) =
    let
        val days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    in
        number_before_reaching_sum(day, days_in_month) + 1
    end

(* Question 10 *)
fun month_range(day1 : int, day2: int) =
    if day1 > day2 then [] else (what_month day1)::month_range(day1 + 1, day2)

(* Question 11 - very similar to better_max in Lecture 3 Notes by Dan Grossman, Autumn 2017 *)
fun oldest(dates : (int * int * int) list) =
    if null dates
    then NONE
    else
        let val tl_ans = oldest(tl dates)
        in
            if isSome tl_ans
                andalso is_older(valOf tl_ans, hd dates)
            then tl_ans
            else SOME (hd dates)
        end

(* As a matter of style might prefer not to do so much "valOf" in the recursion - DG, Lecture 3 Notes *)
(*
fun oldest_alt(dates : (int * int * int) list) =
    if null dates
    then NONE
    else let (* ok to assume nonempty b/c local *)
            fun oldest_nonempty (dates : (int * int * int) list) =
                if null (tl dates)
                then hd dates
                else
                    let val tl_ans = oldest_nonempty(tl dates)
                    in
                        if is_older(tl_ans, hd dates)
                        then tl_ans
                        else hd dates
                    end
        in
            SOME (oldest_nonempty dates)
        end
*)

fun cumulative_sum(nums : int list) =
        if null nums
        then []
        else
            if null (tl nums)
            then [hd nums]
            else
                let
                    fun push_cumulative(x : int, xs : int list) = (x + (hd xs)) :: (tl xs)
                in
                    (hd nums)::(cumulative_sum(push_cumulative(hd nums, tl nums)))
                end

(* Challenge Question 13 *)
fun remove_duplicates(nums : int list) =
    if null nums then [] else
        if null (tl nums)
        then [hd nums]
        else
            let
                fun append_unique(x: int, xs : int list) =
                    if null xs then [] else
                        if null (tl xs)
                        then
                            if x = (hd xs) then [] else [hd xs]
                        else
                            if x = (hd xs) then append_unique(x, tl xs) else (hd xs)::append_unique(x, tl xs)
            in
                (hd nums)::remove_duplicates(append_unique(hd nums, tl nums))
            end

fun number_in_months_challenge(dates : (int * int * int) list, months : int list) =
    number_in_months(dates, remove_duplicates(months))

fun dates_in_months_challenge(dates : (int * int * int) list, months : int list) =
    dates_in_months(dates, remove_duplicates(months))



(* Challenge Question 14 *)

(* Extract nth element from egenric list *)
fun get_nth_gen(xs, n : int) =
    if n = 1 then (hd xs) else get_nth_gen(tl xs, n - 1)

fun reasonable_date(date : int * int * int) =
    let
        val day = #1 date
        val month = #2 date
        val year = #3 date

        fun leap_year(year : int) =
            year mod 400 = 0 orelse (year mod 4 = 0 andalso year mod 100 <> 0)

        fun days_per_month(year : int) =
            if leap_year(year)
            then [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
            else [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

        fun days_in_month(month : int, year : int) =
            get_nth_gen(days_per_month(year), month)

    in
        if year < 1
        then false
        else
            if month < 1 orelse month > 12
            then false
            else
                if day < 1 orelse day > days_in_month(month, year)
                then false
                else true
    end
