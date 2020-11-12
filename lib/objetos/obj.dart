

class Pregunta {
  String pregunta;
  String respuesta;
  Pregunta({this.pregunta, this.respuesta});
}


class Encuesta {
  String nombre;                          
  List<Pregunta> preguntas;
  Encuesta({this.preguntas, this.nombre});
}
