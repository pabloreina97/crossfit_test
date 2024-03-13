import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    var textThemes = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('PERFIL'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
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
                  child: const Image(fit: BoxFit.cover, image: AssetImage('assets/images/avatar/avatar (6).jpg'))),
            ),
            const SizedBox(height: 10),
            Text('Pablo Reina', style: textThemes.displaySmall),
            Text('pabloreinagalvez@gmail.com', style: textThemes.bodyLarge),
            const SizedBox(height: 20),

            /// -- BUTTON
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/edit_profile'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('EDITAR PERFIL'),
            ),
            const SizedBox(height: 30),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Historial de entrenamiento', style: textThemes.headlineSmall),
                ),
                const SizedBox(height: 10),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
                      title: const Text('Ayer, 17:00'),
                      subtitle: const Text('CrossFit'),
                      leading: const Icon(Icons.sports_gymnastics),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
                      title: const Text('Ayer, 17:00'),
                      subtitle: const Text('CrossFit'),
                      leading: const Icon(Icons.sports_gymnastics),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
                      title: const Text('Ayer, 17:00'),
                      subtitle: const Text('CrossFit'),
                      leading: const Icon(Icons.sports_gymnastics),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Divider(),
            // const SizedBox(height: 10),

            /// -- MENU
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
              title: const Text('Ajustes'),
              leading: const Icon(Icons.settings),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pushNamed('/ajustes');
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
              title: const Text('Pagos'),
              leading: const Icon(Icons.monetization_on),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
              title: const Text('Información'),
              leading: const Icon(Icons.info),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            const Divider(),
            // const SizedBox(height: 10),
            ProfileMenuWidget(
              title: "Cerrar sesión",
              icon: Icons.logout,
              textColor: colors.error,
              endIcon: false,
              onPress: () {},
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      leading: Icon(icon, color: textColor),
      onTap: onPress,
    );
  }
}

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('EDITAR PERFIL'),
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
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          foregroundColor: Theme.of(context).colorScheme.onPrimary,
                          padding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(double.infinity, 0),
                        ),
                        child: const Text('GUARDAR CAMBIOS'),
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
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
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
