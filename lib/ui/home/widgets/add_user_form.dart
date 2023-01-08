import 'package:app_dio/ui/home/controller.dart';
import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  const UserForm(
      {Key? key,
      required this.homeController,
      this.isUpdate = false,
      required this.onSubmit})
      : super(key: key);

  final HomeController homeController;
  final bool? isUpdate;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: homeController.nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.teal)),
              labelText: 'Nombre',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: homeController.jobController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.teal)),
              labelText: 'Trabajo',
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
            onPressed: onSubmit,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(isUpdate! ? 'Actualizar' : 'Añadir'),
            ),
          ),
        ],
      ),
    );
  }
}
