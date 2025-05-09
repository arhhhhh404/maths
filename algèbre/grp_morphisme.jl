function est_morphisme(G::Vector, opG::Function, H::Vector, opH::Function, f::Function)
    for x in G
        for y in G
            lhs = f(opG(x, y))
            rhs = opH(f(x), f(y))
            if lhs != rhs
                println("Échec pour x = $x et y = $y : f(x*y) = $lhs ≠ f(x)*f(y) = $rhs")
                return false
            end
        end
    end
    return true
end

G = [0, 1, 2, 3]
H = [0, 1]

opG(x, y) = mod(x + y, 4)
opH(x, y) = mod(x + y, 2)

f(x) = mod(x, 2)

if est_morphisme(G, opG, H, opH, f)
    println("f est un morphisme de groupes")
else
    println("f n'est PAS un morphisme de groupes")
end