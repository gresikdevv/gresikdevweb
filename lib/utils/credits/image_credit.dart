class ImageCredit {
  String path;
  String creator;
  String url;

  ImageCredit(this.path, this.creator, this.url);

  static List<ImageCredit> imageCredits = [
    ImageCredit("set/bf.svg", "Freepik",
        "https://www.flaticon.com/packs/friendship-day-2?k=1621088865842"),
    ImageCredit("set/family.svg", "monkik",
        "https://www.flaticon.com/free-icon/family_2219802?term=family&page=1&position=7&page=1&position=7&related_id=2219802&origin=search"),
    ImageCredit("cake.svg", "srip",
        "https://www.flaticon.com/free-icon/birthday-cake_1244225?term=cake&page=1&position=59&page=1&position=59&related_id=1244225&origin=search"),
    ImageCredit("notes.svg", "Freepik",
        "https://www.flaticon.com/free-icon/sticky-notes_3300049?term=notes&page=3&position=13&page=3&position=13&related_id=3300049&origin=search"),
    // ImageCredit("","",""),
  ];

  static List<String> creators = ["Freepik", "monkik", "srip"];
}
