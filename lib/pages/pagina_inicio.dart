import 'package:flutter/material.dart';

class PaginaInicio extends StatefulWidget{
  const PaginaInicio({Key? key}):super(key: key);
  @override
  State<PaginaInicio>createState()=>_Widget029State();
}

class _Widget029State extends State<PaginaInicio>{
  @override
  Widget build (BuildContext context){
    return Center(
      child: ElevatedButton(
      child: const Text('Modal botton sheet'),
      onPressed:(){
        showModalBottomSheet(
          context: context, 
          builder: (BuildContext context){
          return SizedBox(
            height: 400,
            child: Center(
              child: ElevatedButton(
                child: const Text('Close'),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
          );
          });
      },
    ),

    );
  }
}

/*
class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Página de Inicio',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}*/
