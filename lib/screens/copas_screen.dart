import 'package:flutter/material.dart';
import '../model/copa_model.dart';
import '../repository/copa_repository.dart';

class CopasScreen extends StatefulWidget {
  @override
  _CopasScreenState createState() => _CopasScreenState();
}

class _CopasScreenState extends State<CopasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, .9),
        title: Text("Copas do Mundo - Futebol"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<CopaModel>>(
        future: CopaRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<CopaModel> copas) {
    return ListView.builder(
      itemCount: copas == null ? 0 : copas.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardCopa(copas[index]);
      },
    );
  }

  Card cardCopa(CopaModel copa) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: new EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 10),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 8.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(top: 4.0, left: 8.0),
            child: Image.asset(copa.imagemCard, width: 64.0,),
          ),
          title: Text(
            "Copa do mundo - " + copa.ano,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "Local: " + copa.lugar,
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () {

            Navigator.pushNamed(
              context,
              "/copas_detalhes",
              arguments: copa,
            );

          },
        ),
      ),
    );
  }

}
