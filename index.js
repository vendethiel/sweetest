import @ from "contracts.js";

macro fun {
  rule {
    $name:ident ($contract ...) { $body ... }
  } => {
    @ $contract ...
    function $name () {
       return (function {
         $body ...
       }).apply(this, arguments);
    }
  }
}

fun getMul ((Num) -> (Num) -> Num) {
  3 => (x) => x * 10,
  x => (x) => x * 2
};

console.log(getMul(3)(4));
