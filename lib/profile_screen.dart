import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    var textThemes = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('PERFIL'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- IMAGE
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://www.laguiadelvaron.com/wp-content/uploads/2021/03/schw14.jpg'))),
            ),
            const SizedBox(height: 10),
            Text('Pablo Reina', style: textThemes.displaySmall),
            Text('pabloreinagalvez@gmail.com', style: textThemes.bodyLarge),
            const SizedBox(height: 20),

            /// -- BUTTON
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/edit_profile'),
              child: const Text('Editar perfil'),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Historial de entrenamiento', style: textThemes.headlineSmall),
                  const SizedBox(height: 10),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        title: Text('Ayer, 17:00'),
                        subtitle: Text('CrossFit'),
                        leading: Icon(Icons.sports_gymnastics),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text('Ayer, 17:00'),
                        subtitle: Text('CrossFit'),
                        leading: Icon(Icons.sports_gymnastics),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text('Ayer, 17:00'),
                        subtitle: Text('CrossFit'),
                        leading: Icon(Icons.sports_gymnastics),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 10),

            /// -- MENU
            ListTile(
              title: Text('Ajustes'),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pushNamed('/ajustes');
              },
            ),
            ListTile(
              title: Text('Pagos'),
              leading: Icon(Icons.monetization_on),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              title: Text('Información'),
              leading: Icon(Icons.info),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),

            const Divider(),
            const SizedBox(height: 10),
            ProfileMenuWidget(
                title: "Cerrar sesión", icon: Icons.logout, textColor: colors.error, endIcon: false, onPress: () {}),
          ],
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var colors = Theme.of(context).colorScheme;
    var iconColor = isDark ? colors.primary : colors.onPrimary;

    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: iconColor.withOpacity(0.1),
        ),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge?.apply(color: textColor)),
      trailing: endIcon ? const Icon(Icons.keyboard_arrow_right, size: 18.0, color: Colors.grey) : null,
    );
  }
}

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('EDITAR PERFIL'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // -- IMAGE with ICON
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                            fit: BoxFit.cover,
                            image:
                                NetworkImage('https://www.laguiadelvaron.com/wp-content/uploads/2021/03/schw14.jpg'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: colors.primary),
                      child: const Icon(Icons.edit, color: Colors.black, size: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // -- Form Fields
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(label: Text('Nombre completo'), prefixIcon: Icon(Icons.person)),
                    ),
                    const SizedBox(height: 40 - 20),
                    TextFormField(
                      decoration: const InputDecoration(label: Text('Email'), prefixIcon: Icon(Icons.mail)),
                    ),
                    const SizedBox(height: 40 - 20),
                    TextFormField(
                      decoration: const InputDecoration(label: Text('Teléfono'), prefixIcon: Icon(Icons.phone)),
                    ),
                    const SizedBox(height: 40 - 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text('Contraseña'),
                        prefixIcon: const Icon(Icons.fingerprint),
                        suffixIcon: IconButton(icon: const Icon(Icons.remove_red_eye), onPressed: () {}),
                      ),
                    ),
                    const SizedBox(height: 40),

                    // -- Form Submit Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(side: BorderSide.none, shape: const StadiumBorder()),
                        child: const Text('Editar perfil', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    const SizedBox(height: 40),

                    // -- Created Date and Delete Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text.rich(
                          TextSpan(
                            text: 'Se unió el ',
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(text: '19/02/2024', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: colors.errorContainer,
                              elevation: 0,
                              foregroundColor: colors.onErrorContainer,
                              shape: const StadiumBorder(),
                              side: BorderSide.none),
                          child: const Text('Borrar'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
