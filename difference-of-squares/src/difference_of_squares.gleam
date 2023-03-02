pub fn square_of_sum(n: Int) -> Int {
  square(sum_of_n(n))
}

pub fn sum_of_squares(n: Int) -> Int {
    case n {
    1 -> 1
    nn -> square(n)+sum_of_squares(n-1)
  }
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n)-sum_of_squares(n)
}

fn square(n: Int) -> Int {
  n * n
}

fn sum_of_n(n : Int) -> Int {
  case n {
    0 -> 0
    nn -> sum_of_n(n-1)+n
  }
}