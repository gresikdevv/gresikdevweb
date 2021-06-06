import 'dart:math';

class VConst {
  VConst._();

  static String emptyValidator = "Cannot be empty";

  static String lorem =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  static List<String> bdayQuotes = [
    "It's your day, and I can't wait to celebrate it with you.",
    "I hope your birthday is the happiest.",
    "Wish you were here for me to spoil today.",
    "Wishing you a happy birthday and a year that’s blessed.",
    "So grateful that God put you on this earth and in my life.",
    "Be safe, have fun, take pictures, and enjoy every minute of this exciting time in your life!",
  ];

  static getBdayQuotes() {
    Random random = new Random();
    int randomNumber = random.nextInt(bdayQuotes.length);
    return bdayQuotes[randomNumber];
  }

  static List<String> memoryQuotes = [
    "Memories warm you up from the inside. But they also tear you apart.",
  ];

  static getMemoryQuotes() {
    Random random = new Random();
    int randomNumber = random.nextInt(memoryQuotes.length);
    return memoryQuotes[randomNumber];
  }
}
