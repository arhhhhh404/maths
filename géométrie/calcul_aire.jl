function aire_forme(forme::String, dimensions::Vector{Float64})
    if forme == "carré"
        return dimensions[1]^2
    elseif forme == "rectangle"
        return dimensions[1] * dimensions[2]
    elseif forme == "cercle"
        return π * dimensions[1]^2
    elseif forme == "triangle"
        return (dimensions[1] * dimensions[2]) / 2
    else
        error("Forme non reconnue. Veuillez choisir entre 'carré', 'rectangle', 'cercle' ou 'triangle'.")
    end
end


println("Choisissez la forme (carré, rectangle, cercle, triangle) : ")
forme = readline()

if forme == "carré"
    println("Entrez la longueur du côté : ")
    côté = parse(Float64, readline())
    dimensions = [côté]
elseif forme == "rectangle"
    println("Entrez la longueur du rectangle : ")
    longueur = parse(Float64, readline())
    println("Entrez la largeur du rectangle : ")
    largeur = parse(Float64, readline())
    dimensions = [longueur, largeur]
elseif forme == "cercle"
    println("Entrez le rayon du cercle : ")
    rayon = parse(Float64, readline())
    dimensions = [rayon]
elseif forme == "triangle"
    println("Entrez la base du triangle : ")
    base = parse(Float64, readline())
    println("Entrez la hauteur du triangle : ")
    hauteur = parse(Float64, readline())
    dimensions = [base, hauteur]
else
    println("Forme invalide")
    return
end

aire = aire_forme(forme, dimensions)
println("L'aire de la figure est : $aire")