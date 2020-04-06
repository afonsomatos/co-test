## **Brief description of each fail test**

| File | Description                                                   
|------|------------                                                                 
| 2char.min | Two characters inside a single char ('ab')
| ack.min | Ackermann function, but function 'argc' has no return type
| bignumber.min | 2^31 + 1 in decimal
| char_slash.min | Tests '\\'
| empty.min | Empty file
| end_unaligned.min | 'end' is not in the start of the line
| end.min | File with only the keyword 'end'
| endquote1.min | Tests '\\"'
| module_unaligned.min | 'module' is not in the start of the line
| multidim.min | Tests a 2D array (there are no multidimensional arrays in minor)
| multiindex.min | Tests 2D array indexing (there are no multidimensional arrays in minor). Note: It should also fail because array declaration has no size
| no_end.min | 'program' with no 'end'
| no_start.min | 'program' with no 'start'
| non_special_char.min | Tries to escape a non-special character ('\\v')
| program_unaligned.min | 'program' is not in the start of the line
| program_var_fail.min | 'program' appears in the start of the line inside the program itself
| repeated.min | Local variable 'a' has the same name as function argument 'a'
| return_in_main.min | 'return' in the main function, but outside any block
| semicolon1.min | No semicolon (;) after an assignement expression (x := 3)
| semicolon2.min | Semicolon after last function parameter
| semicolon3.min | Semicolon after last declaration (in the declarations zone)
| too_large_bin.min | 2^31 + 1 in binary
| too_large_dec.min | 2^31 + 1 in decimal
| too_large_hex.min | 2^31 + 1 in hexadecimal
| too_large_in_str.min | Tests a very large number (not representable in minor) as part of a string
| too_large_oct.min | 2^31 + 1 in octal
| undefined1.min | Undefined variable
| unfinished_comment_2.min | A multiline comment that is never finished, after a finished one
| unfineshed_comment.min | A multiline comment that is never finished
