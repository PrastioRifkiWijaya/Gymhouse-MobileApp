import 'package:flutter/material.dart';



class TrainerListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All Trainer List',
      theme: ThemeData(),
      home: TrainerListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TrainerListScreen extends StatelessWidget {
  final List<Trainer> trainers = [
    Trainer(
      name: 'Abdul Abdi',
      speciality: 'Professional GYM - Trainer',
      image: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
    ),
    Trainer(
      name: 'Prastio Adam',
      speciality: 'Professional GYM - Trainer',
      image: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
    ),
    Trainer(
      name: 'Yuntand',
      speciality: 'Professional GYM - Trainer',
      image: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
    ),
    Trainer(
      name: 'Firman',
      speciality: 'Meditation - Trainer',
      image: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
    ),
    Trainer(
      name: 'Mr. Beast',
      speciality: 'Professional GYM - Trainer',
      image: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
    ),
    Trainer(
      name: 'Arkani',
      speciality: 'Nutrition - Trainer',
      image: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
    ),
    // Add more trainers here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Trainer List'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: trainers.length,
        itemBuilder: (BuildContext context, int index) {
          return TrainerCard(trainer: trainers[index]);
        },
      ),
    );
  }
}

class Trainer {
  final String name;
  final String speciality;
  final String image;

  Trainer({
    required this.name,
    required this.speciality,
    required this.image,
  });
}

class TrainerCard extends StatelessWidget {
  final Trainer trainer;

  const TrainerCard({
    required this.trainer,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(trainer.image),
        ),
        title: Text(
          trainer.name,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(trainer.speciality),
      ),
    );
  }
}
