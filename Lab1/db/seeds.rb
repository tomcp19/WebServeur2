# Tommy Landry 2020-10-01

#Donnees
u1 = User.new(nom:"Landry", prenom:"Tommy", email:"TL@cshawi.ca", telephone:"8191234567")
u2 = User.new(nom:"Phaneuf", prenom:"Jade", email:"JP@cshawi.ca", telephone:"8193214567")
u3 = User.new(nom:"Denoncourt", prenom:"JY", email:"JYD@cshawi.ca", telephone:"8191237654")
u4 = User.new(nom:"Grenier", prenom:"Dave", email:"DG@cshawi.ca", telephone:"8193217654")

p1 = Pays.new(nom: "Canada")
p2 = Pays.new(nom: "USA")
p3 = Pays.new(nom: "Mexique")
p4 = Pays.new(nom: "Potatoland")

ad1 = Adresse.new(numero:"123", rue:"St-Antoine", ville:"Louiseville", province:"QC")
ad2 = Adresse.new(numero:"456", rue:"St-Calvince", ville:"Shawi-sud", province:"ON")
ad3 = Adresse.new(numero:"789", rue:"St-Goldorak", ville:"TR", province:"BC")
ad4 = Adresse.new(numero:"1000", rue:"St-Câliboire", ville:"Becancour", province:"NB")

ad1.pays = p1
ad2.pays = p1
ad3.pays = p2
ad4.pays = p3

u1.adresses << ad1
u1.adresses << ad2
u2.adresses << ad2
u3.adresses << ad3
u4.adresses << ad4

u1.save
u2.save
u3.save
u4.save


#Test erreurs

#Error = tel +10
#u5 = User.new(email:"BT@cshawi.ca", telephone:"81912345678")

#Error = Email non unique
#u6 = User.new(nom:"Landry", prenom:"Tommy", email:"TL@cshawi.ca", telephone:"8191234567")

#Error = pays identique 
#p5 = Pays.new(nom:"Canada")

#manque numero
#ad5 = Adresse.new(rue:"St-Antoine", ville:"Louiseville", province:"QC")
#ad5.pays = p1

#manque rue
#ad6 = Adresse.new(numero:"123", ville:"Louiseville", province:"QC")
#ad6.pays = p1

#manque ville
#ad7 = Adresse.new(numero:"123", rue:"St-Antoine", province:"QC")
#ad7.pays = p1

#manque province
#ad8 = Adresse.new(numero:"123", rue:"St-Antoine", ville:"Louiseville")
#ad8.pays = p1

#manque prenom
#u7 = User.new(nom:"Landry", email:"TL@cshawi.ca")

#manque telephone
#u7 = User.new(nom:"Landry", prenom:"Tommy", email:"TL@cshawi.ca")

#manque nom
#u8 = User.new(prenom:"Tommy", email:"TL@cshawi.ca", telephone:"8191234567")

#telephone contient des lettres
#u11 = User.new(nom:"Landry", prenom:"Tommy", email:"TL@cshawi.ca", telephone:"819d234567")

#pas de pays
#ad8 = Adresse.new(numero:"123", rue:"St-Antoine", ville:"Louiseville", province: "QC")

