=begin
Preston Copeland
August 18, 2015
Project Euler

Problem 19: Counting Sundays

You are given the following information, but you may prefer to do some research for yourself.

    1 Jan 1900 was a Monday.
    Thirty days has September,
    April, June and November.
    All the rest have thirty-one,
    Saving February alone,
    Which has twenty-eight, rain or shine.
    And on leap years, twenty-nine.
    A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

=end

months_no_leap = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
months_leap = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
day = [1, 2, 3, 4, 5, 6, 7]

def leap_year?(year)
  (year%400 == 0) || (year%4 == 0 && year%100 != 0)
end

(1901..2000).each do |year|

end








