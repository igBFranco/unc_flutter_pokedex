import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/poke_model.dart';

class DetailData extends StatelessWidget {
  final Pokemon? pokemon;
  const DetailData({Key? key, this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
                color: Colors.red.withOpacity(0.4),
                offset: Offset(0, -4),
                blurRadius: 4),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Descrição",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("clicou aqui");
                    },
                    child: Image(
                      height: 20,
                      width: 20,
                      image: AssetImage('assets/heart_1.png'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at ex ut mauris ultricies feugiat sed et dolor. Nullam porttitor vel nulla id venenatis. Praesent quis lacus tristique turpis dapibus malesuada eget in massa. Nullam dapibus arcu vitae pulvinar posuere. Duis nec suscipit urna. Nulla facilisi. Suspendisse eu malesuada quam, eu posuere nisi.",
                      style: TextStyle(
                          fontSize: 18, color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          "Peso",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "8.5 kg",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          "Altura",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "61 cm",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          "Tipos",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: InkWell(
                            child: Image(
                              height: 40,
                              width: 40,
                              image: AssetImage('assets/fire.png'),
                            ),
                          ),
                        ),
                        Text(
                          "Fire",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () => {},
                          child: Text(
                            "Movimentos",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
