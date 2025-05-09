function factorisation_premiers(n)
    factors = []

    while n % 2 == 0
        push!(factors, 2)
        n ÷= 2
    end

    i = 3
    while i * i <= n
        while n % i == 0
            push!(factors, i)
            n ÷= i
        end
        i += 2
    end

    if n > 2
        push!(factors, n)
    end

    return factors
end

println("Entrez un nombre pour la décomposition en facteurs premiers : ")
n = parse(Int, readline())
println("La décomposition en facteurs premiers de $n est : ", factorisation_premiers(n))