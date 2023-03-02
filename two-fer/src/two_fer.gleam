import gleam/option.{Option, Some, None}

pub fn two_fer(name: Option(String)) -> String {
    case name {
      None -> "One for you, one for me."
      Some(name) -> "One for " <> name <> ", one for me."
    }
}
