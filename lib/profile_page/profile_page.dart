import 'dart:io';
import 'package:design_system/design_system.dart';
import 'package:design_system/responsivity.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../core/countries.dart';
import '../core/image_picker/picker_image.dart';
import '../home/register_page.dart';
import '../login/login_page.dart';
import '../validators/validators.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final formKey = GlobalKey<FormState>(); // Chave para chamar o formulário

  String _userEmail = '';
  final String _userName = '';
  String _telephone = '';
  final String _password = '';

  IPickerImage picker = ImagePickerImpl(ImagePicker());
  File? path;
  Country? selectedCountry;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAFBFB),
        appBar: AppBarWidget(
          appBarColor: Theme.of(context).appBarTheme.backgroundColor!,
          // TODO: Está certo
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(
                firstRow: '😎 Setting up your \nprofile',
                secondRow: Text(
                  'Add your profile photo',
                  style: TextStyle(
                    color: Color(0xffD5D4D5),
                  ),
                ),
              ),
              DefaultPaddingWidget(
                body: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImagePickWidget(
                        path: path,
                        picker: () async {
                          path = await picker.getImage();
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: Responsivity.automatic(28, mediaQueryData),
                      ),
                      const CustomTextWidget(
                        title: 'Full Name',
                      ),
                      SizedBox(
                        height: Responsivity.automatic(20, mediaQueryData),
                      ),
                      TextFieldWidget(
                        labelText: 'Name',
                        hintText: 'Type your name',
                        prefixIcon: Icons.person,
                        validator: (value) {
                          return Validators.nameValidator(
                            name: value,
                          );
                        },
                      ),
                      SizedBox(
                        height: Responsivity.automatic(28, mediaQueryData),
                      ),
                      const CustomTextWidget(
                        title: 'CPF',
                      ),
                      SizedBox(
                        height: Responsivity.automatic(20, mediaQueryData),
                      ),
                      TextFieldWidget(
                        labelText: 'CPF',
                        hintText: 'Type your CPF',
                        prefixIcon: Icons.person,
                        validator: (value) {
                          return Validators.cpfValidator(
                            cpf: value,
                          );
                        },
                      ),
                      SizedBox(
                        height: Responsivity.automatic(28, mediaQueryData),
                      ),
                      const CustomTextWidget(
                        title: 'Telephone',
                      ),
                      SizedBox(
                        height: Responsivity.automatic(20, mediaQueryData),
                      ),
                      TextFieldWidget(
                        labelText: 'Telephone',
                        hintText: 'Type your telephone',
                        prefixIcon: Icons.phone,
                        validator: (value) {
                          return Validators.telephoneValidator(
                            telephone: value,
                          );
                        },
                      ),
                      SizedBox(
                        height: Responsivity.automatic(28, mediaQueryData),
                      ),
                      const CustomTextWidget(
                        title: 'Country',
                      ),
                      CustomDropDownWidget<Country>(
                        hint: const Text(
                          'Select your Country',
                        ),
                        onChanged: (country) {
                          selectedCountry = country;
                        },
                        items: countries.map(
                          (country) {
                            return DropdownMenuItem(
                              value: country,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(country.flag),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(country.name),
                                ],
                              ),
                            );
                          },
                        ).toList(),
                      ),
                      SizedBox(
                        height: Responsivity.automatic(90, mediaQueryData),
                      ),
                      ConfirmButtonWidget(
                        titleButton: 'Confirm',
                        onPressed: () {
                          final isValid = formKey.currentState!.validate();
                          if (isValid == false) {
                            return;
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
