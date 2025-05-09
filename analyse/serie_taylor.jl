using Symbolics

function taylor_series(f_expr, x, a::Number, n::Int)
    terms = zero(f_expr)
    for k in 0:n
        deriv = expand_derivatives(differentiate(f_expr, x, k))
        term = (subs(deriv, x => a) / factorial(k)) * (x - a)^k
        terms += term
    end
    return simplify(terms)
end

@variables x
f = ...

a = ...
n = ...

taylor_poly = taylor_series(f, x, a, n)
println("Série de Taylor de f(x) = exp(x) * sin(x) autour de x = $a à l'ordre $n :")
println(taylor_poly)
