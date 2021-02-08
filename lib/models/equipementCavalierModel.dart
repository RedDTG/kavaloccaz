class EquipementCavalier {
  String nom;
  String description;
  String prix;
  String lieu;
  String marque;


  EquipementCavalier(this.nom, this.description, this.prix, this.lieu, this.marque);

  Map<String, dynamic> toJson() => {
        'nom': nom,
        'description': description,
        'prix': prix,
        'lieu': lieu,
        'marque' : marque,
      };
}
