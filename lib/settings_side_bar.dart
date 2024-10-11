import 'package:flutter/material.dart';
import 'package:islamy_application/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsSideBar extends StatefulWidget {
  const SettingsSideBar({super.key});

  @override
  State<SettingsSideBar> createState() => _SettingsSideBarState();
}

class _SettingsSideBarState extends State<SettingsSideBar> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Drawer(
      shadowColor: Theme.of(context).primaryColor.withOpacity(0.25),
      backgroundColor: Theme.of(context).colorScheme.surface,
      width: MediaQuery.of(context).size.width * 0.79,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
                //  border: Border(top: BorderSide(color: Theme.of(context).primaryColor.withOpacity(0.20),width: 10)),
                gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.20),
                Theme.of(context).primaryColor,
              ],
            )),
            child: Image.asset(
              "assets/images/sideBar_image.png",
              alignment: Alignment.bottomCenter,
            ),
          ),
          SwitchListTile.adaptive(
            inactiveThumbColor:  Theme.of(context).colorScheme.secondary,
            trackOutlineColor:  WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),
            activeTrackColor: Theme.of(context).colorScheme.secondary,
            value: provider.isDark,
            onChanged: (value) {
              provider
                  .changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
            },
            //   inactiveTrackColor:Theme.of(context).primaryColor,,
            title: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  provider.isDark ? Icons.dark_mode : Icons.light_mode,
                  color: Theme.of(context).iconTheme.color,
                ),
                const SizedBox(width: 15),
                Text(
                  provider.isDark ? "Dark Mode" : "Light Mode",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.language,
              color: Theme.of(context).iconTheme.color,
            ),
            title: const Text("language",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
            trailing: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: DropdownButton(
                borderRadius: BorderRadius.circular(15),
                iconEnabledColor:Provider.of<ThemeProvider>(context).isDark? Theme.of(context).colorScheme.secondary: Theme.of(context).colorScheme.surface,
                value: "en",
                items: const [
                  DropdownMenuItem(
                    child: Text(
                      "English",
                      style: TextStyle(color: Colors.white),
                    ),
                    value: "en",
                  ),
                  DropdownMenuItem(
                    child:
                        Text("Arabic", style: TextStyle(color: Colors.white)),
                    value: "Ar",
                  )
                ],
                onChanged: (value) {},
                dropdownColor: Theme.of(context).primaryColor.withOpacity(0.4),
              ),
            ),
          )
        ],
      ),
    );
  }
}
