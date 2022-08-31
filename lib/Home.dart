import 'package:flutter/material.dart';
import 'package:ui_gojek/Model/Model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ListAllLeague extends StatefulWidget {
  const ListAllLeague({Key? key}) : super(key: key);

  @override
  State<ListAllLeague> createState() => _ListAllLeagueState();
}

class _ListAllLeagueState extends State<ListAllLeague> {
  LeagueClassModel? leagueClassModel;
  bool isloaded = true;

  void getAllListPL() async {
    setState(() {
      isloaded = false;
    });
    final res = await http.get(
      Uri.parse(
          "https://www.thesportsdb.com/api/v1/json/2/all_leagues.php"),
    );
    print("status code " + res.statusCode.toString());
    leagueClassModel =
        LeagueClassModel.fromJson(json.decode(res.body.toString()));
    print("team 0 : " + leagueClassModel!.leagues![0].strLeague.toString());
    setState(() {
      isloaded = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllListPL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List League"),
      ),
      body: Center(
        child: Container(
          child: isloaded == true
              ? ListView.builder(
              itemCount: leagueClassModel!.leagues!.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 20,
                              height: 20,
                              child: Icon(Icons.people)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(leagueClassModel!
                                  .leagues![index].strLeague
                                  .toString()),
                              Text(leagueClassModel!
                                  .leagues![index].strSport
                                  .toString()),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}