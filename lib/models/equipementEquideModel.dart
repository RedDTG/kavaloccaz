class EquipementEquide {
  String nom;
  String categorie;
  String prix;
  String pourQui;
  String taille;


  EquipementEquide(this.nom, this.categorie, this.prix, this.pourQui, this.taille);

  Map<String, dynamic> toJson() => {
        'nom': nom,
        'categorie': categorie,
        'prix': prix,
        'pourQui': pourQui,
        'taille': taille,
      };
}
