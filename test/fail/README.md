## **Brief description of each fail test**

| File | Description                                                   
|------|------------                                                                 
| 2char.min | Two characters inside a single char ('ab')
| ack.min | Ackermann function, but function 'argc' has no return type
| addr.min | Tests address of a number literal (&3)
| addr2.min | Tests address of a string variable
| bignumber.min | 2^31 + 1 in decimal
| char_slash.min | Tests '\\'
| di.min | Tries to index a number x (x[0])
| dim.min | Declares a string with a dimension
| elif_no_if.min | 'elif' without a previous 'if'
| else_no_if.min | 'else' without a previous 'if'
| empty.min | Empty file
| end_unaligned.min | 'end' is not in the start of the line
| end.min | File with only the keyword 'end'
| endquote1.min | Tests '\\"'
| forwardbody.min | A number that is declared as 'forward', but is initialized
| forwardbody2.min | A function that is declared as 'forward', but is implemented
| invalid_args.min | Passes string arguments to function with number parameters
| invalid_args2.min | Few argumtents passed to function call
| invalid_repeat.min | 'repeat' outside a loop
| invalid_stop.min | 'stop outside a loop
| invalid_types1.min | Assign string to number
| invalid_types3.min | Initialize string with a number value *(not confirmed)*
| invalid_types4.min | 'void' function that returns a number
| invalid_types5.min | A function that should return 'number', but returns nothing
| invalid_types6.min | Assign string to a position in an array
| invalid_types7.min | A function that should return 'string', but returns a number
| invalidfn.min | Trying to call a number x (x(10))
| module_unaligned.min | 'module' is not in the start of the line
| multidim.min | Tests a 2D array (there are no multidimensional arrays in minor)
| multiindex.min | Tests 2D array indexing (there are no multidimensional arrays in minor). Note: It should also fail because array declaration has no size
| no_end.min | 'program' with no 'end'
| no_start.min | 'program' with no 'start'
| non_special_char.min | Tries to escape a non-special character ('\\v')
| program_unaligned.min | 'program' is not in the start of the line
| program_var_fail.min | 'program' appears in the start of the line inside the program itself
| repeated.min | Local variable 'a' has the same name as function argument 'a'
| return_at_end.min | 'return' in the main function, but outside any block
| return_in_main.min | 'return' in the main function, but outside any block
| semicolon1.min | No semicolon (;) after an assignement expression (x := 3)
| semicolon2.min | Semicolon after last function parameter
| semicolon3.min | Semicolon after last declaration (in the declarations zone)
| straritm.min | Add number to string
| too_large_bin.min | 2^31 + 1 in binary
| too_large_dec.min | 2^31 + 1 in decimal
| too_large_hex.min | 2^31 + 1 in hexadecimal
| too_large_in_str.min | Tests a very large number (not representable in minor) as part of a string
| too_large_oct.min | 2^31 + 1 in octal
| undefined1.min | Undefined variable
| unfinished_comment_2.min | A multiline comment that is never finished, after a finished one
| unfineshed_comment.min | A multiline comment that is never finished
| void.min | Tries to use the result of a void function call in an expression
