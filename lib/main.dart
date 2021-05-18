import 'package:flutter/material.dart';

void main() => runApp(BrisaApp());

class BrisaApp extends StatefulWidget {
  @override
  _BrisaAppState createState() => _BrisaAppState();
}

class _BrisaAppState extends State<BrisaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(brightness: Brightness.dark), debugShowCheckedModeBanner: false, home: Principal());
  }
}

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} // Fin clase Principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //Fin void InitState

  Widget card(String text) {
    return Card(
      color: Colors.blue[200],
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //Fin de widget card

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //Fin de Tab enviando texto con icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TELMEX"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Tarjeta 1 Bienvenido a mi telmex"),
          card("Tarjeta 2 Mi paquete"),
          card("Tarjeta 3 Tienda Online"),
          card("Tarjeta 4 Configuracion"),
          card("Tarjeta 5 Cliente: Nava"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Inicio", Icon(Icons.account_balance_sharp)),
          tab("Paquete", Icon(Icons.keyboard_arrow_right)),
          tab("Tienda", Icon(Icons.add_shopping_cart_rounded)),
          tab("Configuracion", Icon(Icons.build_circle)),
          tab("Cliente", Icon(Icons.account_box)),
        ],
      ),
    ); //Fin de Scaffold
  } //Fin de widget
} //Fin class _PrincipalState
