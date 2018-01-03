fun test_output(result : bool) =
    if result then "passes" else "fails";

(* fun print_results(results : string list) =
    if null results then print "Results Complete"
    else print(hd results) *)

(*)    val strings = "";
    val strings = "" : string
    - val strings = strings ^ s1;
    val strings = "this is one\n" : string
    - val strings = strings ^ s2;
    val strings = "this is one\nthis is two\n" : string
    - print(strings)
    = ;
    this is one
    this is two
    val it = () : unit
*)

(* Question 1: fun is_older *)
print "Question 1: \n";
(* I added is_older2 because I am not sure what the preferred approach is *)

val date_1 = (2016, 9, 26);
val date_2 = (2018, 1, 2);
val date_3 = (2017, 12, 31);
val date_4 = (2018, 1, 1);
val date_5 = (2017, 3, 31);
val date_6 = (2018, 4, 1);

val is_older_test =
is_older (date_1, date_2) = true andalso
is_older (date_1, date_1) = false andalso
is_older (date_2, date_1) = false andalso
is_older (date_3, date_4) = true andalso
is_older (date_4, date_3) = false andalso
is_older (date_5, date_6) = true andalso
is_older (date_6, date_5) = false;
print("The function is_older " ^ (test_output is_older_test) ^ "\n");

val is_older2_test =
is_older2 (date_1, date_2) = true andalso
is_older2 (date_1, date_1) = false andalso
is_older2 (date_2, date_1) = false andalso
is_older2 (date_3, date_4) = true andalso
is_older2 (date_4, date_3) = false andalso
is_older2 (date_5, date_6) = true andalso
is_older2 (date_6, date_5) = false;
print("The function is_older2 " ^ (test_output is_older2_test) ^ "\n");

(* Question 2: fun number_in_month *)
print "Question 2: \n";
val list_of_dates = [date_1, date_2, date_3, date_4, date_5, date_6];

val number_in_month_test =
number_in_month2(list_of_dates, 1) = 2 andalso
number_in_month2(list_of_dates, 2) = 0 andalso
number_in_month2(list_of_dates, 3) = 1 andalso
number_in_month2(list_of_dates, 4) = 1 andalso
number_in_month2(list_of_dates, 5) = 0 andalso
number_in_month2(list_of_dates, 6) = 0 andalso
number_in_month2(list_of_dates, 7) = 0 andalso
number_in_month2(list_of_dates, 8) = 0 andalso
number_in_month2(list_of_dates, 9) = 1 andalso
number_in_month2(list_of_dates, 10) = 0 andalso
number_in_month2(list_of_dates, 11) = 0 andalso
number_in_month2(list_of_dates, 12) = 1 andalso
number_in_month2([], 12) = 0;
print("The function number_in_month " ^ (test_output number_in_month_test) ^ "\n");

val number_in_month2_test =
number_in_month2(list_of_dates, 1) = 2 andalso
number_in_month2(list_of_dates, 2) = 0 andalso
number_in_month2(list_of_dates, 3) = 1 andalso
number_in_month2(list_of_dates, 4) = 1 andalso
number_in_month2(list_of_dates, 5) = 0 andalso
number_in_month2(list_of_dates, 6) = 0 andalso
number_in_month2(list_of_dates, 7) = 0 andalso
number_in_month2(list_of_dates, 8) = 0 andalso
number_in_month2(list_of_dates, 9) = 1 andalso
number_in_month2(list_of_dates, 10) = 0 andalso
number_in_month2(list_of_dates, 11) = 0 andalso
number_in_month2(list_of_dates, 12) = 1 andalso
number_in_month2([], 12) = 0;
print("The function number_in_month2 " ^ (test_output number_in_month2_test) ^ "\n");

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
dates_in_month(list_of_dates, 1) = [(2018, 1, 2),(2018, 1, 1)] andalso
dates_in_month(list_of_dates, 2) = [] andalso
dates_in_month(list_of_dates, 3) = [(2017, 3, 31)] andalso
dates_in_month(list_of_dates, 4) = [(2018, 4, 1)] andalso
dates_in_month(list_of_dates, 5) = [] andalso
dates_in_month(list_of_dates, 6) = [] andalso
dates_in_month(list_of_dates, 7) = [] andalso
dates_in_month(list_of_dates, 8) = [] andalso
dates_in_month(list_of_dates, 9) = [(2016, 9, 26)] andalso
dates_in_month(list_of_dates, 10) = [] andalso
dates_in_month(list_of_dates, 11) = [] andalso
dates_in_month(list_of_dates, 12) = [(2017, 12, 31)];
print("The function dates_in_month " ^ (test_output dates_in_month_test) ^ "\n");