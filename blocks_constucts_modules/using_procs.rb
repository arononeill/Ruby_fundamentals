# Program to show an example of a use for a proc

# You can check how many arguments the proc expects using .arity
# If some arguments are optional then it returns the number of non-optional arguments plus 1 (with a minus sign)
proc {|a, b| }.arity # => 2
proc {|a, *b, c| }.arity # => -3 # has 2 non optional arguments

# 2 separately declared procs
weekend = proc {|time| time.saturday? || time.sunday?}
weekday = proc {|time| tie.wday < 6 }

# Procs can be used in a case statement, here it determines whether the given time falls on a weekend or weekday.
# Here the current time is passed to each proc, and if it returns true, the appropiate ouput is produced.
case Time.now
when weekend then puts "Wake up @ 8am"
when weekday then puts "Wake up @ 7am"
else puts "No wake up calls outside of time"
end