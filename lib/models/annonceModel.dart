class Annonce {
  String title;
  String localisation;
  String description;
  String date;

  Annonce(this.title, this.localisation, this.description, this.date);

  Map<String, dynamic> toJson() => {
        'date': date,
        'description': description,
        'nom': title,
        'position': localisation,
      };
}
