import 'dart:convert';

class motor {
  // A perro ya andas programando
  final dict =
      '{{"originario": {"purepecha": "Anapuesti","tipo": "adjetivo","español": "Es originario de…"}},{"Trabajo": {"purepecha": "ánchekorheta","tipo": "sustantivo","español": "Trabajo, actividad, empleo, trabajo realizado."}}}';
  // final user = jsonDecode(dict);
  // var res = "";
  buscar(query) {
    return "buscaste: " + query;
  }
}
