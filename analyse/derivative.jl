using Symbolics

function derive(f_expr::Symbolics.Num, var::Symbolics.Num, ordre::Int)
    return expand_derivatives(differentiate(f_expr, var, ordre))
end

@variables x

f = sin(x) * exp(x)

ordre = ...

dérivée = derive(f, x, ordre)
println("La dérivée d'ordre $ordre de f(x) = $f est :")
println(dérivée)