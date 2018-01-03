(* Question 1: fun is_older *)
(* I added is_older2 because I am not sure what the preferred approach is *)

val date_1 = (2016, 9, 26);
val date_2 = (2018, 1, 2);
val date_3 = (2017, 12, 31);
val date_4 = (2018, 1, 1);
val date_5 = (2017, 3, 31);
val date_6 = (2018, 4, 1);

is_older (date_1, date_2) = true;
is_older (date_1, date_1) = false;
is_older (date_2, date_1) = false;

is_older (date_3, date_4) = true;
is_older (date_4, date_3) = false;

is_older (date_5, date_6) = true;
is_older (date_6, date_5) = false;

is_older2 (date_1, date_2) = true;
is_older2 (date_1, date_1) = false;
is_older2 (date_2, date_1) = false;

is_older2 (date_3, date_4) = true;
is_older2 (date_4, date_3) = false;

is_older2 (date_5, date_6) = true;
is_older2 (date_6, date_5) = false;

(* Question 2: fun number_in_month *)
val list_of_dates = [date_1, date_2, date_3, date_4, date_5, date_6];

number_in_month(list_of_dates, 12) = 1;
number_in_month(list_of_dates, 6) = 0;
number_in_month([], 12) = 0;
number_in_month(list_of_dates, 1) = 2;

number_in_month2(list_of_dates, 12) = 1;
number_in_month2(list_of_dates, 6) = 0;
number_in_month2([], 12) = 0;
number_in_month2(list_of_dates, 1) = 2;
