open Hex

let _ =
  let () = assert (string_of_hex empty_hex = "") in
  let one_hex = hex_of_big_int Big_int.(big_int_of_int 1) 1 in
  let () = assert (string_of_hex one_hex = "01") in
  let () = assert (string_of_hex (concat_hex one_hex one_hex) = "0101") in
  let () = assert (length_of_hex one_hex = 1) in
  Printf.printf "testing hex\n"
