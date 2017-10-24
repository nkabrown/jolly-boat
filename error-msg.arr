#lang pyret
# parse error messages can be found in pyret-lang/src/arr/trove/error.arr
# compliation error messages can be found in pyret-lang/src/arr/compiler/compile-structs.arr
# see Error Messages Are Classifiers paper @ https://cs.brown.edu/~sk/Publications/Papers/Published/wk-error-msg-classifier/paper.pdf

include image

# parse-error-bad-operator <ParseError> The operator has no surrounding whitespace. Operator must have white space seperating it from its operands
8+2

# parse-error-bad-number <ParseError> Number literals in pyret require at least digit before the decimal point
5 * .6

# mixed-binops <CompileError> Operators of different kinds cannot be mixed at the same level. Use parentheses to group the operations and to make the order of the operations clear.
3 + 5 * 6

# parse-error-next-token <ParseError> Parse failed. Is there a missing colon(`:`), comma(`,`), string marker(`"`), or keyword? Is there something there that shouldn't be?
overlay(circle(30, "outline", "green"), star(50, "solid", "blue")

# arity-mismatch <RuntimeError> This application expression errored. 2 arguments were passed to an operator that expected 3 arguments. An application expression expects the number of parameters and arguments to be the same.
circle(25, "solid, blue")
