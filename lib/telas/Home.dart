import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aprenda_ingles/telas/Bichos.dart';
import 'package:aprenda_ingles/telas/Numeros.dart';
import 'package:flutter/widgets.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(

          children: <Widget>[
            Text("Aprenda inglês           "),
            Image.asset("assets/images/BR.png", width: 50),
            Image.asset("assets/images/Ingles.png", width: 60,
            alignment: Alignment.centerRight,)

          ],
        ),

        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.yellow,
          controller: _tabController,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          tabs: <Widget>[

            Tab (
            text: "Bichos",
            ),
            Tab (
              text: "Números",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Bichos(),
          Numeros(),
        ],
      ),
    );
  }
}
