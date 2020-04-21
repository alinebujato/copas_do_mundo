import '../model/copa_model.dart';
import 'database.dart';
import 'package:flutter/cupertino.dart';

class CopaRepository {

  Future<List<CopaModel>> findAllAsync() async {
    
    var db = Database();
    await db.createDatabase();

    List<CopaModel> cursos = new List<CopaModel>();

    // Card 1994
    var descricaoCopaEUA = 'A Copa do Mundo FIFA de 1994 foi a 15ª edição sediada nos Estados Unidos, sendo o 1º Mundial a ser realizado neste país. A edição foi aberta no estádio Soldier Field, em Chicago, no dia 17 de junho, com direito a performance de Diana Ross. No mesmo dia, aconteceu o jogo de abertura entre a Alemanha e Bolívia';
    var detalhesCampeaoEUA = 'Na final o Brasil jogou contra a Itália, o jogo terminou empatado em 0 a 0 nos 90 minutos do tempo normal e na prorrogação. O Brasil conquistou o título após ganhar a disputa por pênaltis pelo placar de 3–2 e se tornou a primeira seleção tetracampeã mundial de futebol.';

    // Card 1998
    var descricaoCopaFranca = 'A Copa do Mundo FIFA de 1998 foi a 16ª edição da Copa do Mundo FIFA de Futebol e a primeira a contar com 32 seleções. Ocorreu de 10 de junho até 12 de julho de 1998. O evento foi sediado na França, pela segunda vez. O torneio foi marcado por goleadas, entre elas França 4 x 0 Arábia Saudita, Espanha 6 x 1 Bulgária, Holanda 5 x 0 Coreia do Sul e Argentina 5 x 0 Jamaica.';
    var detalhesCampeaoFranca = 'A final foi disputada pela França e o Brasil. A partida foi realizada em 12 de julho às 21 horas, no Stade de France, com um público estimado em 80 mil pessoas. Sob o apito do árbitro marroquino Said Belqola, Zinédine Zidane marcou duas vezes no primeiro tempo e Emmanuel Petit ampliou aos 48 minutos do segundo tempo, terminando a partida em 3 a 0, derrotando a seleção brasileira, então a última campeã do mundo e única tetracampeã da época.';

    // Card 2002
    var descricaoCopaJapaoECoreia = 'A Copa do Mundo FIFA de 2002 foi a 17ª edição da Copa do Mundo FIFA de Futebol e foi a primeira vez que dois países sediaram unidos o evento (Japão e Coreia do Sul)';
    var detalhesCampeaoJapaoECoreia = 'O Brasil conquistou pela quinta vez o título mundial, depois de derrotar a Alemanha na final.';
    
    // Card 2006
    var descricaoCopaAlemanha = 'A Copa do Mundo FIFA de 2006 foi a 18ª edição da Copa do Mundo FIFA de Futebol realizou-se pela segunda vez na Alemanha, a primeira vez foi no ano de 1974, como Alemanha Ocidental. Pela primeira vez na história do campeonato, o campeão do torneio anterior – no caso, o Brasil – precisou disputar as eliminatórias para poder defender o direito de participar no torneio.';
    var detalhesCampeaoAlemanha = 'A partida final foi disputada em 9 de julho no Olympiastadion, na cidade de Berlim na Alemanha. A Itália venceu a França nos pênaltis após empate por 1 a 1 em 120 minutos de jogo. Um dos momentos mais comentados da partida foi a expulsão de Zidane após agredir o jogador Marco Materazzi.';
    
    // Card 2010
    var descricaoCopaAfrica = 'A Copa do Mundo FIFA de 2010 foi a 19ª edição da Copa, que ocorreu de 11 de junho até 11 de julho. O evento foi sediado na África do Sul, tendo partidas realizadas em 9 cidades. As seleções da Sérvia e da Eslováquia faziam sua primeira participação na competição como países independentes. A edição teve apenas uma grande goleada: Portugal 7–0 Coreia do Norte. Porém, também contou com goleadas da Seleção Alemã sobre grandes seleções: 4–1 na Inglaterra e 4–0 na Argentina.';
    var detalhesCampeaoAfrica = 'A final da Copa do Mundo FIFA de 2010 foi disputada em 11 de julho no estádio Soccer City, na cidade de Joanesburgo. Este encontro protagonizou as seleções dos Países Baixos e da Espanha, que lutaram para obter seu primeiro título. A Espanha venceu o jogo na prorrogação.';

    // Card 2014
    var descricaoCopaBrasil = 'A Copa do Mundo FIFA de 2014 foi a 20ª edição da Copa, que ocorreu de 12 de junho até 13 de julho no Brasil, anfitrião da competição pela segunda vez. De acordo com estatísticas da FIFA, esta foi a Copa mais poluente da história (2,72 milhões de toneladas métricas de dióxido de carbono), mas, ao mesmo tempo, a mais sustentável (os estádios construídos ou modernizados para a Copa adotaram tecnologias para aproveitar a água de chuva, a radiação UV, fontes renováveis de energia e iluminação de baixo consumo energético, entre outras).';
    var detalhesCampeaoBrasil = 'A final foi realizada em 13 de julho no estádio Maracanã, na cidade do Rio de Janeiro. Foi disputada entre Alemanha e Argentina e na prorrogação a Alemanha venceu o jogo por 1 a 0, sendo a campeã.';

    // Card 2018
    var descricaoCopaRussia = 'A Copa do Mundo FIFA de 2014 foi a 21ª edição da Copa e ocorreu na Rússia, anfitriã da competição pela primeira vez. Entrou para a história por ter sido a Copa do Mundo mais cara da história até então, com um custo total de 14,2 bilhões de dólares. Foi também a primeira edição de uma Copa a fazer uso do Árbitro Assistente de Vídeo (VAR).';
    var detalhesCampeaoRussia = 'A final da Copa do Mundo FIFA de 2018 foi realizada em 15 de julho no Estádio Lujniki em Moscou, na Rússia, entre as seleções da França e da Croácia. A partida foi vencida por 4–2 pela Seleção Francesa no tempo regulamentar, conquistando assim seu bicampeonato mundial e garantindo vaga na Copa das Confederações 2021. Esta foi a primeira final, desde a de 2002, a ser decidida no tempo regulamentar.';

    if (db.created) {
      cursos = new List<CopaModel>();
      cursos.add(
        new CopaModel(
          id: 1,
          ano: '1994',
          descricao: descricaoCopaEUA,
          lugar: 'Estados Unidos',
          campeao: 'Brasil',
          detalhesCampeao: detalhesCampeaoEUA,
          nomeArtilheiro: 'Hristo Stoichkov (BUL)',
          quantGols: '6',
          imagemCard: 'assets/eua.jpg',
          corTexto: Color.fromRGBO(48, 153, 0, 0.7),
        ),
      );
      cursos.add(
        new CopaModel(
          id: 2,
          ano: '1998',
          descricao: descricaoCopaFranca,
          lugar: 'França',
          campeao: 'França',
          detalhesCampeao: detalhesCampeaoFranca,
          nomeArtilheiro: 'Davor Šuker (HR)',
          quantGols: '6',
          imagemCard: 'assets/franca.jpg',
          corTexto: Color.fromRGBO(22, 0, 194, 0.7),
        ),
      );
      cursos.add(
        new CopaModel(
          id: 3,
          ano: '2002',
          descricao: descricaoCopaJapaoECoreia,
          lugar: 'Japão e Coreia do Sul',
          campeao: 'Brasil',
          detalhesCampeao: detalhesCampeaoJapaoECoreia,
          nomeArtilheiro: 'Ronaldo (BR)',
          quantGols: '8',
          imagemCard: 'assets/japao-coreia.jpg',
          corTexto: Color.fromRGBO(48, 153, 0, 0.7),
        ),
      );
      cursos.add(
        new CopaModel(
          id: 4,
          ano: '2006',
          descricao: descricaoCopaAlemanha,
          lugar: 'Alemanha',
          campeao: 'Itália',
          detalhesCampeao: detalhesCampeaoAlemanha,
          nomeArtilheiro: 'Miroslav Klose (GER)',
          quantGols: '5',
          imagemCard: 'assets/alemanha.png',
          corTexto: Color.fromRGBO(58, 247, 0, 0.7),
        ),
      );
      cursos.add(
        new CopaModel(
          id: 5,
          ano: '2010',
          descricao: descricaoCopaAfrica,
          lugar: 'África',
          campeao: 'Espanha',
          detalhesCampeao: detalhesCampeaoAfrica,
          nomeArtilheiro: 'Thomas Müller (GER)',
          quantGols: '5',
          imagemCard: 'assets/africa.png',
          corTexto: Color.fromRGBO(200, 5, 10, 0.7),
        ),
      );
      cursos.add(
        new CopaModel(
          id: 6,
          ano: '2014',
          descricao: descricaoCopaBrasil,
          lugar: 'Brasil',
          campeao: 'Alemanha',
          detalhesCampeao: detalhesCampeaoBrasil,
          nomeArtilheiro: 'James Rodríguez (COL)',
          quantGols: '6',
          imagemCard: 'assets/brasil.jpg',
          corTexto: Color.fromRGBO(200, 5, 10, 0.7),
        ),
      );
      cursos.add(
        new CopaModel(
          id: 7,
          ano: '2018',
          descricao: descricaoCopaRussia,
          lugar: 'Rússia',
          campeao: 'França',
          detalhesCampeao: detalhesCampeaoRussia,
          nomeArtilheiro: 'Harry Kane (ENG)',
          quantGols: '6',
          imagemCard: 'assets/russia.jpg',
          corTexto: Color.fromRGBO(52, 101, 242, 0.7),
        ),
      );
    }

    return new Future.value(cursos);
  }

}
