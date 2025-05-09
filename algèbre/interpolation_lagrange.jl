using Symbolics

function lagrange_symbolique(x_vals::Vector{Float64}, y_vals::Vector{Float64})
    @variables x
    n = length(x_vals)
    P = 0.0

    for i in 1:n
        L = 1.0
        for j in 1:n
            if j != i
                L *= (x - x_vals[j]) / (x_vals[i] - x_vals[j])
            end
        end
        P += y_vals[i] * L
    end

    return simplify(P)
end

x_data = [1.0, 2.0, 4.0]
y_data = [1.0, 4.0, 2.0]

P = lagrange_symbolique(x_data, y_data)
println("Polynôme d'interpolation de Lagrange :")
println(P)