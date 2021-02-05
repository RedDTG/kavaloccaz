class EquidesAnnonce {
  String nom;
  String lieu;
  String description;
  String prix;
  String race;
  String taille;
  String date;

  EquidesAnnonce(this.nom, this.lieu, this.description, this.date, this.race,
      this.prix, this.taille);

  Map<String, dynamic> toJson() => {
        'date': date,
        'description': description,
        'nom': nom,
        'lieu': lieu,
        'taille': taille,
        'race': race,
        'prix': prix
      };
}
