class Descricoes {
  static List<String> _tituloAnual = ["Anual"];

  static List<String> _tituloEstacao = [
    "Verão",
    "Outono",
    "Inverno",
    "Primavera"
  ];

  static List<String> _tituloMes = [
    "Janeiro",
    "Fevereiro",
    "Março",
    "Abril",
    "Maio",
    "Junho",
    "Julho",
    "Agosto",
    "Setembro",
    "Outubro",
    "Novembro",
    "Dezembro"
  ];

  static List<String> get tituloAnual => _tituloAnual;

  static set tituloAnual(List<String> value) {
    _tituloAnual = value;
  }

  static List<String> get tituloEstacao => _tituloEstacao;

  static set tituloEstacao(List<String> value) {
    _tituloEstacao = value;
  }

  static List<String> get tituloMes => _tituloMes;

  static set tituloMes(List<String> value) {
    _tituloMes = value;
  }
}
