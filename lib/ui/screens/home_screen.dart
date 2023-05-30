import 'package:flutter/material.dart';
import 'package:netflix_projet_flutter/utils/constante.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //scaffold = la page au scrowl
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: Image.asset('assets/logos/netflix_logo_2.png'),
      ),
      body: ListView(
        children: [
          
          ///////////ici la taille de la prochaine BOX////////
          Container(
            height: 500,
            color: sBackgroundColor, //La couleurs du background de page
          ),
          const SizedBox(height: 15,
          ),
          Text('Tendances actuelles',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
            ),
          ),
          

          ///////////ici la taille de la prochaine BOX////////
          const SizedBox(height: 5,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, //ici j'indique un scroll horizontal dans une box (conteneur)
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 110,
                  color: Colors.yellow,
                  child: Center(
                    child: Text(index.toString())
                    ),
                  );
              },
            ),
          ),


          ////////////////////////1er collage /////////////////////////////
          


          const SizedBox(height: 15,
          ),
          Text('Actuellement au cinéma',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
            ),
          ),
          

          ///////////ici la taille de la prochaine BOX////////
          const SizedBox(height: 5,
          ),
          SizedBox(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, //ici j'indique un scroll horizontal dans une box (conteneur)
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 220,
                  color: Colors.blue,
                  child: Center(
                    child: Text(index.toString())
                    ),
                  );
              },
            ),
          ),





          //////////////////2eme collage ///////////////////////
          
          
          const SizedBox(height: 15,
          ),
          Text('Prochainement disponible',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
            ),
          ),
          

          ///////////ici la taille de la prochaine BOX////////
          const SizedBox(height: 5,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, //ici j'indique un scroll horizontal dans une box (conteneur)
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 110,
                  color: Colors.green,
                  child: Center(
                    child: Text(index.toString())
                    ),
                  );
              },
            ),
          )
          
        ],
      ),
    );
  }
}
