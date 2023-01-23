part of 'helpers.dart';

//Loading personalizado

showLoading(BuildContext context) {
  return showDialog(
      context: context,
      //barrierDismissible: false, bloquea por fuera del AlertDialog no se cierra si el usuario toca fuera
      barrierDismissible: false,
      // ignore: prefer_const_constructors
      builder: (_) => AlertDialog(
            title: const Text('Espere'),
            content: LinearProgressIndicator(),
          ));
}

showAlert(BuildContext context, String title, String message) {
  return showDialog(
      context: context,
      //barrierDismissible: false, bloquea por fuera del AlertDialog no se cierra si el usuario toca fuera
      barrierDismissible: false,
      // ignore: prefer_const_constructors
      builder: (_) => AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              MaterialButton(
                child:const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ));
}
