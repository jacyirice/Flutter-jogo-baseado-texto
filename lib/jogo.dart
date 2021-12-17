import 'cena.dart';

class Jogo {
  int _cenaAtual = 0;
  final List<Cena> _cenas = [
    Cena(
      'Em uma noite de sexta, você é abordado por um homem que o convida para participar de um jogo misterioso com recompensar maravilhosas.',
      ['Aceitar participar e seguir o homem.', 'Se recusar a participar.'],
      [1, 6],
    ),
    Cena(
      'Você aceita participar e segue o homem misterioso até um beco onde alguem atinge sua cabeça por trás. Quando você acorda, vê outras 3 pessoas amarradas em cadeiras ao seu redor.',
      ['Tentar gritar.', 'Olhar ao seu redor.'],
      [5, 2],
    ),
    Cena(
      'Olhando ao seu redor, você percebe que existe bombas embaixo das 4 cadeiras. Além de estarem sozinhos em um quarto com apenas um televisão desligada',
      [
        'Tentar se desamarrar e ligar a televisão.',
        'Tentar falar com umas das 4 pessoas.'
      ],
      [4, 3],
    ),
    Cena(
      'Enquanto tentava falar com as outras pessoas, uma delas consegue se desamarrar e abate todos os outros participantes. Você morreu.',
      ['Reiniciar.'],
      [0],
    ),
    Cena(
      'Você consegue se desamarrar e vai ligar a televisão, porém a policia invade o quarto e o encontra. Após investigações, é dito que o botão da televisão era um ativador das bombas. Você é preso.',
      ['Reiniciar'],
      [0],
    ),
    Cena(
      'Ao gritar, uma bomba alocada embaixo da sua cadeira é ativada. Você morreu',
      ['Reiniciar'],
      [0],
    ),
    Cena(
      'Você segue sua vida normalmente, mas sempre se perguntando o que poderia ter acontecido.',
      ['Reiniciar'],
      [0],
    ),
  ];

  void setCenaAtual(int cena) => _cenaAtual = cena;
  int getCenaAtual() => _cenaAtual;

  String getDescricaoCena() {
    return _cenas[_cenaAtual].descricaoCena;
  }

  int lengthAcoesDisponiveis() {
    return _cenas[_cenaAtual].acoesDisponiveis.length;
  }

  List<String> getAcoesDisponiveis() {
    return _cenas[_cenaAtual].acoesDisponiveis;
  }

  String getAcaoDisponivel(int i) {
    return _cenas[_cenaAtual].acoesDisponiveis[i];
  }

  List<int> getProximasCenas() {
    return _cenas[_cenaAtual].proximasCenas;
  }

  int getProximaCena(int i) {
    return _cenas[_cenaAtual].proximasCenas[i];
  }

  void reiniciar() => _cenaAtual = 0;
}
