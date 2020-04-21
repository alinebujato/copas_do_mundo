import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/copa_model.dart';

class CopasDetalhesScreen extends StatefulWidget {
  @override
  _CopasDetalhesScreenState createState() => _CopasDetalhesScreenState();
}

class _CopasDetalhesScreenState extends State<CopasDetalhesScreen> {
  CopaModel copaModel;

  @override
  Widget build(BuildContext context) {
    copaModel = ModalRoute.of(context).settings.arguments;

    // Título, imagem e ano
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 90.0, top: 8.0),
          child: Image.asset(copaModel.imagemCard, width: 64.0),
        ),
        Text(
          "Copa do Mundo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35.0,
          ),
        ),
        Text (
          copaModel.lugar + " - " + copaModel.ano,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
        ),
        ),
      ],
    );

    // Box de cima
    final boxTop = Stack(
      children: <Widget>[
        // Título, imagem e ano
        Container(
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Center(
            child: topContentText,
          ),
        ),
        // Botão de voltar para a tela principal
        Positioned(
          left: 8.0,
          top: 40.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ],
    );

    // Conteúdo principal (descrição)
    final principalContent = Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 8.0, top: 8.0, left: 16.0, right: 16.0),
          child: Text(
            copaModel.descricao,
            style: TextStyle(fontSize: 14.0),
            textAlign: TextAlign.justify,
          ),
        ),
        Container (
          padding: EdgeInsets.only(bottom: 8.0, top: 8.0, left: 16.0, right: 16.0),
          child: Text(
            "Seleção campeã: " + copaModel.campeao,
            style: TextStyle(
              fontSize: 20.0,
              color: copaModel.corTexto,
            ),
          ),
        ),
        Container (
          padding: EdgeInsets.only(bottom: 8.0, top: 8.0, left: 16.0, right: 16.0),
          child: Text(
            copaModel.detalhesCampeao,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
        Container (
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Text(
            "- Artilharia",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        Container (
          padding: EdgeInsets.only(bottom: 8.0, top: 8.0, left: 16.0, right: 16.0),
          child: Text(
            "O artilheiro da Copa foi " + copaModel.nomeArtilheiro + " com " + copaModel.quantGols + " gols.",
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          boxTop,
          principalContent,
        ],
      ),
    );
  }

}