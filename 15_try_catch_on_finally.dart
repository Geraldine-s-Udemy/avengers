void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://fernando-herrera.com');
    print('exito: $value');
  } on Exception catch (err) {
    print('Tenemos una excepción $err');
  } catch (err) {
    print('Tenemos un error: $err');
  } finally {
    print('Fin del Try y Catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parámetros en el URL');
  //throw 'Error en la petición';
  //return 'Tenemos una respuesta en https';
}
