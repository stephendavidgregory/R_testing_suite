# ensure Julia has packages "Suppressor" and "RCall" installed
library(JuliaCall)

julia <- julia_setup()

julia_assign("x", sqrt(2))
print(julia_eval("x"))

print(sqrt(2))
