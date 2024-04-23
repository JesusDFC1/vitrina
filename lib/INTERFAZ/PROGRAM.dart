import 'package:flutter/material.dart';

class programa extends StatefulWidget {
  const programa({super.key});

  @override
  State<programa> createState() => _programaState();
}

class _programaState extends State<programa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INFORMACIÓN DEL DESARROLLLADOR'),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbYZz3nmtG3oyMqsenu9fpEy7ARk_VfVDzH_LJieti633YGYFnCc0s3ToCdx0sViGh--8&usqp=CAU'),
                radius: 60,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_3),
            title: Text('NOMBRE'),
            subtitle: Text('jesus david fragozo carmona'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('telefono'),
            subtitle: Text('3135670067'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('correo'),
            subtitle: Text('fragozocarmonaj@gmail.com'),
            onTap: () {
              // Acción para compartir la aplicación
            },
          ),
        ],
      ),
    );
  }
}
