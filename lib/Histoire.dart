import 'Story.dart';

class Histoire {
  final List<Story> _storyListe = [
    Story(
      titreHistoire:
          "Votre voiture a crevé un pneu sur une route sinueuse au milieu de nulle part sans réception de téléphone portable. Vous décidez de faire du stop. Une camionnette rouillée s'arrête à côté de vous. Un homme avec un chapeau à larges bords et des yeux sans âme vous ouvre la porte du passager et vous demande : « Besoin d'un tour, mon garçon ?",
      choix1: "Je vais monter. Merci pour l'aide !",
      choix2: "Mieux vaut lui demander d'abord s'il est un meurtrier.",
    ),
    Story(
      titreHistoire:
          "Alors que vous commencez à conduire, l'inconnu commence à parler de sa relation avec sa mère. Il devient de plus en plus en colère de minute en minute. Il vous demande d'ouvrir la boîte à gants. À l'intérieur, vous trouverez un couteau ensanglanté, deux doigts coupés et une cassette d'Elton John. Il attrape la boîte à gants.",
      choix1: "J'aime Elton John ! Donnez-lui la cassette.",
      choix2: "C'est lui ou moi ! Tu prends le couteau et tu le poignardes",
    ),
    Story(
      titreHistoire: "Il hoche lentement la tête, déphasé par la question",
      choix1: "Au moins, il est honnête. je vais monter dans",
      choix2: "Attends, je sais comment changer un pneu.",
    ),
    Story(
      titreHistoire: "'Quoi? Un tel flic! Saviez-vous que les accidents de la route sont la deuxième cause de décès accidentel pour la plupart des groupes d'âge adultes ?",
      choix1: "Recommencé",
      choix2: "",
    ),
    Story(
      titreHistoire: "Alors que vous franchissez le garde-corps et que vous vous dirigez vers les rochers déchiquetés en dessous, vous réfléchissez à la sagesse douteuse de poignarder quelqu'un alors qu'il conduit une voiture dans laquelle vous vous trouvez.",
      choix1: "Recommencé",
      choix2: "",
    ),
    Story(
      titreHistoire: "Vous vous liez avec le meurtrier tout en croonant des couplets de Pouvez-vous sentir l'amour ce soir. Il vous dépose à la prochaine ville. Avant de partir, il vous demande si vous connaissez de bons endroits pour jeter des corps. Vous répondez : Essayez la jetée",
      choix1: "Recommencer",
      choix2: "",
    ),
  ];

  String getStory(){
    return _storyListe[_nombreHistoire].titreHistoire;
  }

  String getChoix1(){
    return _storyListe[_nombreHistoire].choix1;
  }

  String getChoix2(){
    return _storyListe[_nombreHistoire].choix2;
  }

  int _nombreHistoire =0;

  void nextStory(int choixNumber){
    if(choixNumber ==1 && _nombreHistoire ==0){
      _nombreHistoire=2;

    }else if(choixNumber ==2 && _nombreHistoire ==0){
      _nombreHistoire = 1;
    }
    else if(choixNumber ==1 && _nombreHistoire ==1){
      _nombreHistoire = 2;
    }
    else if(choixNumber ==1 && _nombreHistoire ==1){
      _nombreHistoire = 3;
    }
    else if(choixNumber ==1 && _nombreHistoire ==2){
      _nombreHistoire = 5;
    }
    else if(choixNumber ==1 && _nombreHistoire ==2){
      _nombreHistoire = 4;
    }
    else if(_nombreHistoire == 3 || _nombreHistoire ==4 || _nombreHistoire==5){
      restart();
    }
  }
  void restart() {
    _nombreHistoire = 0;
  }

  bool buttonShouldBeVisible(){
    if(_nombreHistoire == 0 || _nombreHistoire == 1 || _nombreHistoire == 2){
      return true;
    }else
      {
        return false;
      }
  }
}
