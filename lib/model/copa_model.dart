import 'package:flutter/cupertino.dart';

class CopaModel {
  int id;
  String ano;
  String descricao;
  String lugar;
  String campeao;
  String detalhesCampeao;
  String nomeArtilheiro;
  String quantGols;
  String imagemCard;
  Color corTexto;

  CopaModel({
    this.id,
    this.ano,
    this.descricao,
    this.lugar,
    this.campeao,
    this.detalhesCampeao,
    this.nomeArtilheiro,
    this.quantGols,
    this.imagemCard,
    this.corTexto,
  });
}