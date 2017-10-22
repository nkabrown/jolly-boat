#lang pyret

# square number is n² or n * n
fun square(n :: Number) -> Number:
  doc: "Produces the square of the given number."
  n * n 
where:
  square(-1) is 1
  square(0) is 0
  square(1) is 1
  square(2) is 4
  square(4) is 16
end

# ellipsis points come in threes and signal that the writer is omitting something
fun ellipsize(s :: String, at :: Number) -> String:
  doc: "Truncate the string and add ellipses if it is too long."
  if string-length(s) > at:
    string-substring(s, 0, at) + "..."
  else:
    s 
  end
where:
  ellipsize("truncate", 9) is "truncate"
  ellipsize("", 9) is ""
  ellipsize("bildungsroman", 9) is "bildungsr..."
end

fun has-overtime(hours :: Number) -> Boolean:
  doc: "Determines if overtime pay is applicable."
  if hours > 40:
    true
  else:
    false
  end
where:
  has-overtime(0) is false
  has-overtime(40) is false
  has-overtime(41) is true
  has-overtime(39.5) is false
  has-overtime(40.5) is true
  has-overtime(-41) is false
end
 
fun hours-to-wages(hours :: Number) -> Number:
  doc: "Compute total wages from hours, accounting for overtime, at $10/hr base."
  if hours < 0:
    raise("Cannot compute wage for negative hours")
  else if hours <= 40:
    hours * 10
  else if hours > 40:
    (40 * 10) + ((hours - 40) * (10 * 1.5))
  end
where:
  hours-to-wages(40) is 400
  hours-to-wages(39.5) is 395
  hours-to-wages(40.5) is 407.5
  hours-to-wages(41) is 415
  hours-to-wages(0) is 0
  hours-to-wages(45) is 475
  hours-to-wages(20) is 200
  hours-to-wages(-10) raises "negative hours"
end

fun hours-to-wages-ot(threshold :: Number, rate :: Number, hours :: Number) -> Number:
  doc: "Compute total wage from hours, accounting for overtime, at the given rate."
  if hours < 0:
    raise("Cannot compute wage for negative hours")
  else if hours <= threshold:
    hours * rate
  else if hours > threshold:
    (threshold * rate) + ((hours - threshold) * (rate * 1.5))
  end
where:
  hours-to-wages-ot(40, 10, 40) is 400
  hours-to-wages-ot(40, 10, 39.5) is 395
  hours-to-wages-ot(40, 10, 40.5) is 407.5
  hours-to-wages-ot(40, 10, 41) is 415
  hours-to-wages-ot(40, 10, 0) is 0
  hours-to-wages-ot(40, 10, 45) is 475
  hours-to-wages-ot(40, 10, 20) is 200
  hours-to-wages-ot(40, 10, -10) raises "negative hours"
end
