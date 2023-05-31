import 'package:desafio/src/controller/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var passwords = ['#forTe1', 'senhafraca', 'Qu@s1', 'Voce@Consegue!2023'];

  var controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Verificar Senhas'),
        ),
        body: ListView.builder(
          itemCount: passwords.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(
                passwords[index],
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              trailing: Visibility(
                visible: controller.isStrongPassword(passwords[index]),
                replacement: const Icon(
                  Icons.cancel,
                  color: Colors.red,
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.green,
                ),
              ),
            );
          },
        ));
  }
}
