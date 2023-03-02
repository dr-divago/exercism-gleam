import gleam/string.{ends_with, is_empty, lowercase, trim, uppercase}

pub fn hey(remark: String) -> String {
  case
    ends_with(trim(remark), "?"),
    uppercase(remark) == remark && lowercase(remark) != remark,
    is_empty(trim(remark))
  {
    True, False, False -> "Sure."
    False, True, False -> "Whoa, chill out!"
    True, True, False -> "Calm down, I know what I'm doing!"
    _, _, True -> "Fine. Be that way!"
    False, False, False -> "Whatever."
  }
}
