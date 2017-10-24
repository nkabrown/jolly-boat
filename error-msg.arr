#lang pyret
# error messages can be found in pyret-lang/src/arr/trove/error.arr

# the operator has no surrounding whitespace
8+2

# number literals in pyret require at least digit before the decimal point
5 * .6

# operators of different kinds cannot be mixed at the same level. Use parentheses to group the operations and to make the order of the operations clear.
3 + 5 * 6
