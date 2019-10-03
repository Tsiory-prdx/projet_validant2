def moveUpOrDown(stairs)
    dice = rand 1...6
    puts dice
    case dice
    when  1
        puts "Vouz avez descendu d'une marche"
        stairs -= 1
        puts stairs
    when (2..4)
        puts "Rien ne se passe"
        puts ""

    when (5..6)
        puts "Tu avances d'une seule marche"
        stairs += 1
        puts stairs
        puts ""
    else
        puts "ok"
    end
    return stairs
end