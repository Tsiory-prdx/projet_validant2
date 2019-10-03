
def Diamond_pyramid (level)
    space = " " #posant space pour espace
    diese = "#" #posant Diese pour #
        for i in (1..level/2) #pour i de 1 a la moitier de l'etage       
        puts space * (level-i) + diese * i + diese * (i-1) #appeler full diamond
        end    
    
        for i in (level/2...level)#pour i de la moitier de l'etage a l'etage
        puts space * i + diese * (level-i) + diese * (level-i-1) #appeler reverse diamond
        end    
end

def diamond
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    puts ">"
    nbetage = gets.to_i #prendre la valeur donnée
    if nbetage %2 == 1 #test si le nb donné est impaire ou non
    Diamond_pyramid(nbetage) #true
    else
    puts "Choisissez un nombre impair" #false
    diamond #appeler diamond
    end
end

diamond