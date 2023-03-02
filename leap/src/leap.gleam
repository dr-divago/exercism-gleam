pub fn is_leap_year(year: Int) -> Bool {
  case
    is_divisible_by_4(year),
    is_divisible_by_100(year),
    is_divisible_by_400(year)
  {
    True, False, _ -> True
    True, True, False -> False
    True, True, True -> True
    False, _, _ -> False
  }
}

fn is_divisible_by_4(year: Int) -> Bool {
  year % 4 == 0
}

fn is_divisible_by_400(year: Int) -> Bool {
  year % 400 == 0
}

fn is_divisible_by_100(year: Int) -> Bool {
  year % 100 == 0
}
