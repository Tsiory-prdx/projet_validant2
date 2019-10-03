#*******Fonction d'inscription*******#


def signUp(array)
    puts "pour s'inscrire,"
    print "entrer votre mot de passe:"
    passW = gets.chomp #receuillir le mot de passe
    array.push(passW) #inserer dans un tableau
    puts "Votre compte est enregistré"
    return array #retourner la valeur dans le tableau
end

#*******Fonction de connexion*******#

def logIn(array)
    puts "vous voulez vous connecter??"
    print "entrer votre mot de passe:"
    passW = gets.chomp #receuillir le mot de passe

    #recherche de mot de passe si il est présent dans la base 
    array.each do |pass|
        if passW == pass
            return true
        end
    end    
    return false
end
  
#*******Fonction Perfom*******#

def perform
password=[]
loop do #boucle de la fonction de choix de l'action a faire
    puts " que voulez vous faire?? sign up ou log in ou sortir"
    print ">"
    choice = gets.chomp #receuillir l'action que l'utilisateur veut entre log in , sign up , sortir
    break if choice == "sortir" # Arret si on tape sortir
            if choice == "sign up"
                signUp(password) #stocker le mot dans le tableau
            elsif choice == "log in"
                #test de la veracité du mot de passe
                if logIn(password) == true #si vrai affiche Welcome_screen 
                    puts "bienvenue avec des informations top secrètes de la NSA"
                else   #si mot de passe incorrect afficher mot de passe incorrect  
                    puts "mot de passe incorrect"
                end
            else    #si le choix est faux
                puts "erreur de choix (ce code n'existe pas)"
            end
                
    
    end
    
end

perform #appeler perform
