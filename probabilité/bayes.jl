function formule_bayes(P_A::Float64, P_B_given_A::Float64, P_B::Float64)
    if P_B == 0
        error("P(B) ne peut pas être nul.")
    end
    return (P_B_given_A * P_A) / P_B
end

P_A = ...
P_B_given_A = ...
P_B = ...

P_A_given_B = formule_bayes(P_A, P_B_given_A, P_B)
println("P(A | B) = ", round(P_A_given_B, digits=4))