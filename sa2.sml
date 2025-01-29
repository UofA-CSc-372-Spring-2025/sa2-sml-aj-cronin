(* Solutions to SA2 assignment, Intro to ML *)

(* Name: AJ Cronin*)
(* Time spent on HW6:
*)

(* Collaborators and references:
    ChatGPT 4o mini
*)

(* indicate planning to use the Unit testing module *)
use "Unit.sml";

(**** Problem A ****)

(* fun mynull []       = true
  | mynull (_::_)   = false;

val () =
    Unit.checkExpectWith Bool.toString "mynull [] should be true"
    (fn () => mynull [])
    true

val () =
    Unit.checkExpectWith Bool.toString "mynull [1,2,3] should be false"
    (fn () => mynull [1,2,3])
    false
*)

(**** Problem B ****)

(*fun firstVowel [] = false
  | firstVowel (#"a"::_) = true
  | firstVowel (#"e"::_) = true
  | firstVowel (#"i"::_) = true
  | firstVowel (#"o"::_) = true
  | firstVowel (#"u"::_) = true
  | firstVowel (_::_) = false;

val () =
    Unit.checkExpectWith Bool.toString "firstVowel 'ack' should be true"
    (fn () => firstVowel [#"a",#"c",#"k"])
    true

val () =
    Unit.checkExpectWith Bool.toString "firstVowel 'eep' should be true"
    (fn () => firstVowel [#"e",#"e",#"p"])
    true

val () =
    Unit.checkExpectWith Bool.toString "firstVowel 'ick' should be true"
    (fn () => firstVowel [#"i",#"c",#"k"])
    true

val () =
    Unit.checkExpectWith Bool.toString "firstVowel 'ood' should be true"
    (fn () => firstVowel [#"o",#"o",#"d"])
    true

val () =
    Unit.checkExpectWith Bool.toString "firstVowel 'ugh' should be true"
    (fn () => firstVowel [#"u",#"g",#"h"])
    true

val () =
    Unit.checkExpectWith Bool.toString "firstVowel 'moo' should be false"
    (fn () => firstVowel [#"m",#"o",#"o"])
    false

val () =
    Unit.checkExpectWith Bool.toString "firstVowel '' should be false"
    (fn () => firstVowel [])
    false
*)

(**** Problem C ****)

(*
fun reverse list = foldl (fn (x, xs) => x :: xs) [] list;

val () =
  Unit.checkExpectWith (Unit.listString Int.toString) 
  "reverse [1,2] should be [2,1]"
  (fn () => reverse [1,2])
  [2,1]

val () =
  Unit.checkExpectWith (Unit.listString Int.toString) 
  "reverse [1,2,3] should be [3,2,1]"
  (fn () => reverse [1,2,3])
  [3,2,1]

val () =
  Unit.checkExpectWith (Unit.listString Int.toString) 
  "reverse [] should be []"
  (fn () => reverse [])
  []

val () =
  Unit.checkExpectWith (Unit.listString Int.toString) 
  "reverse [2,2,3,2,2] should be [2,2,3,2,2]"
  (fn () => reverse [2,2,3,2,2])
  [2,2,3,2,2]
*)
(**** Problem D ****)
(*
exception EmptyList;
fun minlist [] = raise EmptyList
  | minlist (x::xs) = foldl Int.min x xs;


val () =
  Unit.checkExnWith Int.toString
  "minlist [] should raise an exception"
  (fn () => minlist [])


val () =
  Unit.checkExpectWith Int.toString
  "minlist [1,2,3,4,0] should be 0"
  (fn () => minlist [1,2,3,4,0])
  0

val () =
  Unit.checkExpectWith Int.toString
  "minlist [2,2,0,2,2] should be 0"
  (fn () => minlist [2,2,0,2,2])
  0
*)
(**** Problem E ****)
(*
exception Mismatch

fun zip ([], []) = [] 
  | zip (x::xs, y::ys) = (x, y) :: zip (xs, ys) 
  | zip (_, _) = raise Mismatch;


val () = Unit.checkExpectWith (Unit.listString (Unit.pairString Unit.intString Unit.intString)) 
  "zip ([1, 2, 3], [4, 5, 6]) should be [(1, 4), (2, 5), (3, 6)]" 
  (fn () => zip ([1, 2, 3], [4, 5, 6])) 
  [(1, 4), (2, 5), (3, 6)]

val () = Unit.checkExpectWith (Unit.listString (Unit.pairString Unit.intString Unit.intString)) 
  "zip ([1], [9]) should be [(1, 9)]" 
  (fn () => zip ([1], [9])) 
  [(1, 9)]

val () = Unit.checkExpectWith (Unit.listString (Unit.pairString Unit.intString Unit.boolString)) 
  "zip ([1], [true]) should be [(1, true)]" 
  (fn () => zip ([1], [true])) 
  [(1, true)]

val () = Unit.checkExnWith (Unit.listString (Unit.pairString Unit.intString Unit.intString)) 
  "zip ([1], [2,3]) should raise an exception" 
  (fn () => zip ([1], [2,3])) 

val () = Unit.checkExnWith (Unit.listString (Unit.pairString Unit.intString Unit.intString)) 
  "zip ([1,2], [3]) should raise an exception" 
  (fn () => zip ([1,2], [3])) 

val () = Unit.checkExpectWith (Unit.listString (Unit.pairString Unit.intString Unit.intString)) 
  "zip ([], []) should be []" 
  (fn () => zip ([], [])) 
  []
*)

(**** Problem F ****)
(*
fun concat [] = []
  | concat (x::xs) = x @ concat xs;

val () = Unit.checkExpectWith (Unit.listString Unit.intString) 
  "concat [[1], [2, 3, 4], [], [5, 6]] should be [1, 2, 3, 4, 5, 6]" 
  (fn () => concat [[1], [2, 3, 4], [], [5, 6]]) 
  [1, 2, 3, 4, 5, 6]

val () = Unit.checkExpectWith (Unit.listString Unit.intString) 
  "concat [[1], [2, 3, 4], [], [5, 6], [], [], [], [], [], [7]] should be [1, 2, 3, 4, 5, 6]" 
  (fn () => concat [[1], [2, 3, 4], [], [5, 6], [], [], [], [], [], [7]]) 
  [1, 2, 3, 4, 5, 6, 7]

val () = Unit.checkExpectWith (Unit.listString Unit.intString) 
  "concat []" 
  (fn () => concat []) 
  []

*)

(**** Problem G ****)
(*
fun isDigit #"0" = true
  | isDigit #"1" = true
  | isDigit #"2" = true
  | isDigit #"3" = true
  | isDigit #"4" = true
  | isDigit #"5" = true
  | isDigit #"6" = true
  | isDigit #"7" = true
  | isDigit #"8" = true
  | isDigit _ = false;

val () =
  Unit.checkExpectWith Bool.toString "isDigit 0 should be true"
  (fn () => isDigit #"0")
  true

val () =
  Unit.checkExpectWith Bool.toString "isDigit 2 should be true"
  (fn () => isDigit #"2")
  true

val () =
  Unit.checkExpectWith Bool.toString "isDigit a should be false"
  (fn () => isDigit #"a")
  false

*)

(**** Problem H ****)
(*
fun isAlpha c = (Char.ord c >= 97 andalso Char.ord c <= 122) 
  orelse (Char.ord c >= 65 andalso Char.ord c <= 90)

val () =
  Unit.checkExpectWith Bool.toString "isAlpha a should be true"
  (fn () => isAlpha #"a")
  true

val () =
  Unit.checkExpectWith Bool.toString "isAlpha A should be true"
  (fn () => isAlpha #"A")
  true

val () =
  Unit.checkExpectWith Bool.toString "isAlpha 4 should be false"
  (fn () => isAlpha #"4")
  false

val () =
  Unit.checkExpectWith Bool.toString "isAlpha . should be false"
  (fn () => isAlpha #".")
  false

*)

(**** Problem I ****)

fun svgCircle (cx, cy, r, fill) = 
   "<circle cx=\"" ^ Int.toString cx ^ "\" cy=\"" ^ Int.toString cy ^ "\" r=\"" ^ Int.toString r ^ "\" fill=\"" ^ fill ^ "\" />"

val () =
  Unit.checkExpectWith (fn x => x)
  "svgCircle (200, 300, 100, \"red\") should return <circle cx=\"200\" cy=\"300\" r=\"100\" fill=\"red\" />"
  (fn () => svgCircle (200, 300, 100, "red"))
  "<circle cx=\"200\" cy=\"300\" r=\"100\" fill=\"red\" />";

(**** Problem J ****)

fun partition p ([]) = ([],[])
  | partition p (x::xs) =
      let
        val (pass, fail) = partition p (xs)
      in
        if p x then
          (x::pass, fail)
        else
          (pass, x::fail)
      end;

val () =
  Unit.checkExpectWith (fn (l1, l2) => "(" ^ Unit.listString Int.toString l1 ^ ", " ^ Unit.listString Int.toString l2 ^ ")")
  "partition (fn x => x mod 2 = 0) [1, 2, 3, 4, 5] should return ([2, 4], [1, 3, 5])"
  (fn () => partition (fn x => x mod 2 = 0) [1, 2, 3, 4, 5])
  ([2, 4], [1, 3, 5]);


(* Unit testing reporting *)

val () = Unit.report()
val () = Unit.reportWhenFailures ()  (* put me at the _end_ *)
