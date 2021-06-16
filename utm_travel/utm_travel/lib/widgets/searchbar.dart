import 'package:flutter/material.dart';
import 'package:utm_travel/widgets/destination.dart';

import 'destination.dart';

class Search extends StatelessWidget {
  static const String idScreen = "searchLocation";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fell free to search Here."),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              }),
        ],
      ),
      body: Destination(),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  // ignore: non_constant_identifier_names
  final Place = [
    "PKU",
    "Faculty of Computing",
    "Faculty of Machanical",
    "Faculty of Electrical",
    "Faculty of Civil Engineering",
    "Language Academy",
    "D06",
    "Lestari",
    "Meranti",
    "KDOJ",
    "KDSE",
    "F54",
    "S01",
  ];
  final recenSearch = [
    "PKU",
    "Faculty of Computing",
    "Faculty of Machanical",
    "Lestari",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // ignore: todo
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => Search()),
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: 200.0,
        child: Card(
          shape: StadiumBorder(),
          color: Colors.amber,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // ignore: todo
    // TODO: implement buildSuggestions
    final suggetionList = query.isEmpty
        ? recenSearch
        : Place.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
              text: suggetionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggetionList[index].substring(query.length),
                    style: TextStyle(color: Colors.blueAccent)),
              ]),
        ),
        //title: Text(suggetionList[index]),
      ),
      itemCount: suggetionList.length,
    );
  }
}
