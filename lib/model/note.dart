class Note {
  var title;
  var description;
  static List<Note> notes = [
    Note("Going for a walk",
        "Today I am going for a walk in dhaka city. Dhaka city is really bad for walking. There is a lot of people out there. But there is not enough space for walking"),
    Note("Shopping List", "1. chicken, 2. Milk"),
    Note("Hello world", "This is a note about hello world")
  ];
  Note(this.title, this.description);
}
