fun test_output(result : bool) =
    if result then "passes" else "fails";

(* Question 1: fun is_older *)
print "Question 1: \n";
(* I added is_older_alt because I am not sure what the preferred approach is *)

val date_1 = (26, 9, 2016);
val date_2 = (2,1,2018);
val date_3 = (31,12,2017);
val date_4 = (1,1,2018);
val date_5 = (31,3,2017);
val date_6 = (1,4,2018);
val date_7 = (4,7,1776);

val is_older_test =
is_older (date_1, date_2) = true andalso
is_older (date_1, date_1) = false andalso
is_older (date_2, date_1) = false andalso
is_older (date_3, date_4) = true andalso
is_older (date_4, date_3) = false andalso
is_older (date_5, date_6) = true andalso
is_older (date_6, date_5) = false;
print("The function is_older " ^ (test_output is_older_test) ^ "\n");

(*
val is_older_alt_test =
is_older_alt (date_1, date_2) = true andalso
is_older_alt (date_1, date_1) = false andalso
is_older_alt (date_2, date_1) = false andalso
is_older_alt (date_3, date_4) = true andalso
is_older_alt (date_4, date_3) = false andalso
is_older_alt (date_5, date_6) = true andalso
is_older_alt (date_6, date_5) = false;
print("The function is_older_alt " ^ (test_output is_older_alt_test) ^ "\n");
*)

(* Question 2: fun number_in_month *)
print "Question 2: \n";
val list_of_dates = [date_1, date_2, date_3, date_4, date_5, date_6];

val number_in_month_test =
number_in_month(list_of_dates, 1) = 2 andalso
number_in_month(list_of_dates, 2) = 0 andalso
number_in_month(list_of_dates, 3) = 1 andalso
number_in_month(list_of_dates, 4) = 1 andalso
number_in_month(list_of_dates, 5) = 0 andalso
number_in_month(list_of_dates, 6) = 0 andalso
number_in_month(list_of_dates, 7) = 0 andalso
number_in_month(list_of_dates, 8) = 0 andalso
number_in_month(list_of_dates, 9) = 1 andalso
number_in_month(list_of_dates, 10) = 0 andalso
number_in_month(list_of_dates, 11) = 0 andalso
number_in_month(list_of_dates, 12) = 1 andalso
number_in_month([], 12) = 0;
print("The function number_in_month " ^ (test_output number_in_month_test) ^ "\n");

(*
val number_in_month_alt_test =
number_in_month_alt(list_of_dates, 1) = 2 andalso
number_in_month_alt(list_of_dates, 2) = 0 andalso
number_in_month_alt(list_of_dates, 3) = 1 andalso
number_in_month_alt(list_of_dates, 4) = 1 andalso
number_in_month_alt(list_of_dates, 5) = 0 andalso
number_in_month_alt(list_of_dates, 6) = 0 andalso
number_in_month_alt(list_of_dates, 7) = 0 andalso
number_in_month_alt(list_of_dates, 8) = 0 andalso
number_in_month_alt(list_of_dates, 9) = 1 andalso
number_in_month_alt(list_of_dates, 10) = 0 andalso
number_in_month_alt(list_of_dates, 11) = 0 andalso
number_in_month_alt(list_of_dates, 12) = 1 andalso
number_in_month_alt([], 12) = 0;
print("The function number_in_month_alt " ^ (test_output number_in_month_alt_test) ^ "\n");
*)

(* Question 3 *)
val list_of_months = [1,12];
val number_in_months_test =
number_in_months(list_of_dates, list_of_months) = 3 andalso
number_in_months(list_of_dates, []) = 0 andalso
number_in_months(list_of_dates, [1]) = 2 andalso
number_in_months(list_of_dates, [2]) = 0 andalso
number_in_months(list_of_dates, [3]) = 1 andalso
number_in_months(list_of_dates, [4]) = 1 andalso
number_in_months(list_of_dates, [5]) = 0 andalso
number_in_months(list_of_dates, [6]) = 0 andalso
number_in_months(list_of_dates, [7]) = 0 andalso
number_in_months(list_of_dates, [8]) = 0 andalso
number_in_months(list_of_dates, [9]) = 1 andalso
number_in_months(list_of_dates, [10]) = 0 andalso
number_in_months(list_of_dates, [11]) = 0 andalso
number_in_months(list_of_dates, [12]) = 1 andalso
number_in_months(list_of_dates, []) = 0;
print("The function number_in_months " ^ (test_output number_in_months_test) ^ "\n");

(* Question 4 *)
val dates_in_month_test =
dates_in_month(list_of_dates, 1) = [date_2,date_4] andalso
dates_in_month(list_of_dates, 2) = [] andalso
dates_in_month(list_of_dates, 3) = [date_5] andalso
dates_in_month(list_of_dates, 4) = [date_6] andalso
dates_in_month(list_of_dates, 5) = [] andalso
dates_in_month(list_of_dates, 6) = [] andalso
dates_in_month(list_of_dates, 7) = [] andalso
dates_in_month(list_of_dates, 8) = [] andalso
dates_in_month(list_of_dates, 9) = [date_1] andalso
dates_in_month(list_of_dates, 10) = [] andalso
dates_in_month(list_of_dates, 11) = [] andalso
dates_in_month(list_of_dates, 12) = [date_3];
print("The function dates_in_month " ^ (test_output dates_in_month_test) ^ "\n");

(* Question 5 *)
val dates_in_months_test =
dates_in_months(list_of_dates, [1,2,3]) = [date_2,date_4,date_5] andalso
dates_in_months([], [1,2,3]) = [] andalso
dates_in_months(list_of_dates, []) = [] andalso
dates_in_months(list_of_dates, [2,5,6,7,8,10,11]) = [];
print("The function dates_in_months " ^ (test_output dates_in_months_test) ^ "\n");

(* Question 6 *)
val strings = ["a","b","c"];

val get_nth_test =
get_nth(strings, 1) = "a" andalso
get_nth(strings, 2) = "b" andalso
get_nth(strings, 3) = "c";
print("The function get_nth " ^ (test_output get_nth_test) ^ "\n");

(* Question 7 *)
val date_to_string_test =
date_to_string(date_1) = "September-26-2016" andalso
date_to_string(date_2) = "January-2-2018" andalso
date_to_string(date_3) = "December-31-2017" andalso
date_to_string(date_4) = "January-1-2018" andalso
date_to_string(date_5) = "March-31-2017" andalso
date_to_string(date_6) = "April-1-2018";
print("The function date_to_string " ^ (test_output date_to_string_test) ^ "\n");

(* Question 8 *)
val nums = [1, 2, 3, 4];

val number_before_reaching_sum_test =
number_before_reaching_sum(0, nums) = 0 andalso
number_before_reaching_sum(1, nums) = 0 andalso
number_before_reaching_sum(2, nums) = 1 andalso
number_before_reaching_sum(3, nums) = 1 andalso
number_before_reaching_sum(4, nums) = 2 andalso
number_before_reaching_sum(5, nums) = 2 andalso
number_before_reaching_sum(6, nums) = 2 andalso
number_before_reaching_sum(7, nums) = 3 andalso
number_before_reaching_sum(8, nums) = 3 andalso
number_before_reaching_sum(9, nums) = 3;
print("The function number_before_reaching_sum " ^ (test_output number_before_reaching_sum_test) ^ "\n");

(* Question 9 *)
val what_month_test =
what_month 1 = 1 andalso
what_month 31 = 1 andalso
what_month 32 = 2 andalso
what_month 59 = 2 andalso
what_month 60 = 3;
print("The function what_month " ^ (test_output what_month_test) ^ "\n");

(* Question 10 *)
val month_range_test =
month_range(1, 4) = [1,1,1,1] andalso
month_range(4, 1) = [] andalso
month_range(30, 32) = [1,1,2] andalso
month_range(364, 365) = [12, 12];
print("The function month_range " ^ (test_output month_range_test) ^ "\n");

(* Question 11 *)
val oldest_test =
oldest([date_1, date_2]) = SOME date_1 andalso
oldest([date_1, date_1]) = SOME date_1 andalso
oldest([date_1, date_2, date_3, date_4, date_5, date_6, date_7]) = SOME date_7 andalso
oldest([]) = NONE;
print("The function oldest " ^ (test_output oldest_test) ^ "\n");

(*
val oldest_alt_test =
oldest_alt([date_1, date_2]) = SOME date_1 andalso
oldest_alt([date_1, date_1]) = SOME date_1 andalso
oldest_alt([]) = NONE;
print("The function oldest_alt " ^ (test_output oldest_alt_test) ^ "\n");
*)

(* Question 12 *)
val cumulative_sum_test =
cumulative_sum([]) = [] andalso
cumulative_sum([1]) = [1] andalso
cumulative_sum([1,2]) = [1,3] andalso
cumulative_sum([1,2,3,4]) = [1,3,6,10];
print("The function cumulative_sum " ^ (test_output cumulative_sum_test) ^ "\n");

(* Challenge Question 13 *)
val number_in_months_challenge_test =
number_in_months(list_of_dates, [1]) = number_in_months_challenge(list_of_dates, [1,1,1]) andalso
number_in_months(list_of_dates, [1,2,3]) = number_in_months_challenge(list_of_dates, [1,2,1,3,1,1,2,2,3]);
print("The function number_in_months_challenge " ^ (test_output number_in_months_challenge_test) ^ "\n");

val dates_in_months_challenge_test =
dates_in_months(list_of_dates, [1]) = dates_in_months_challenge(list_of_dates, [1,1,1]) andalso
dates_in_months(list_of_dates, [1,2,3]) = dates_in_months_challenge(list_of_dates, [1,2,1,3,1,1,2,2,3]);
print("The function dates_in_months_challenge " ^ (test_output dates_in_months_challenge_test) ^ "\n");

(* Challenge Question 14 *)
val reasonable_date_test =
reasonable_date(2,1,1983) = true andalso
reasonable_date(32,1,1983) = false andalso
reasonable_date(31,1,1983) = true andalso
reasonable_date(1,32,1983) = false andalso
reasonable_date(~31,1,1983) = false andalso
reasonable_date(31,~1,1983) = false andalso
reasonable_date(31,1,~1983) = false andalso
reasonable_date(28,2,1983) = true andalso
reasonable_date(29,2,1983) = false andalso
reasonable_date(29,2,1904) = true andalso
reasonable_date(4,7,1776) = true andalso
reasonable_date(0,7,1776) = false andalso
reasonable_date(4,0,1776) = false andalso
reasonable_date(4,7,0) = false;
print("The function reasonable_date " ^ (test_output reasonable_date_test) ^ "\n");
