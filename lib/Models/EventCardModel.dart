class EventCardModel {
  final String img;
  final String title;
  final String location;
  final String time;
  final String date;
  final String months;
  final Function onTap;

  EventCardModel(
      {this.img,
      this.title,
      this.location,
      this.time,
      this.date,
      this.months,
      this.onTap});
}

List<EventCardModel> eventlistmodel = [
  EventCardModel(
      img: "assets/images/img1.jpg",
      title: "Techno Fair 2020",
      location: "Hilton,san Fran.",
      time: "05:00pm",
      date: "20",
      months: "Nov",
      onTap: () {}),
  EventCardModel(
      img: "assets/images/img2.jpg",
      title: "Techno Fair 2020",
      location: "Hilton,san Fran.",
      time: "05:00pm",
      date: "20",
      months: "Nov",
      onTap: () {}),
  EventCardModel(
    img: "assets/images/img3.jpg",
    title: "Techno Fair 2020",
    location: "Hilton,san Fran.",
    time: "05:00pm",
    date: "20",
    months: "Nov",
    onTap: () {},
  ),
];
