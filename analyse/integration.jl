using QuadGK

function integrale_numerique(f::Function, a::Float64, b::Float64)
    result, err = quadgk(f, a, b)
    return result
end

f(x) = ...

a = ...
b = ...

res = integrale_numerique(f, a, b)
println("L'intégrale numérique de f(x) sur [$a, $b] est ≈ ", res)