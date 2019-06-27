# If statement syntax
if can_launch?
  launch
else
  wait
end

message = if lander_cnt > 10 then "Launching" else "Waiting" end

# An if statement in ruby can be assigned to a variable to record its true/false result.