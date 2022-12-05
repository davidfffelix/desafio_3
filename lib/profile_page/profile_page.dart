import 'dart:io';
import 'package:design_system/design_system.dart';
import 'package:design_system/responsivity.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../core/countries.dart';
import '../core/image_picker/picker_image.dart';
import '../home/register_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final formKey = GlobalKey<FormState>(); // Chave para chamar o formulário

  String _userEmail = '';
  String _userName = '';
  String _telephone = '';
  String _password = '';

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
          appBarColor: const Color(0xffFAFBFB),
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
                body: Column(
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
                      title: 'Display Name',
                    ),
                    SizedBox(
                      height: Responsivity.automatic(20, mediaQueryData),
                    ),
                    TextFieldWidget(
                      hintText: 'Display Name',
                      labelText: 'Display Name',
                      prefixIcon: Icons.person,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp('[a-z A-Z]{10}').hasMatch(value)) {
                          return 'Enter correct name';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        formKey.currentState?.validate();
                        // Faz com que as validações funcionem
                        _userEmail = value;
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
                      hintText: 'CPF',
                      labelText: 'CPF',
                      prefixIcon: Icons.person,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your CPF address';
                        }
                        if (!RegExp(r'\S+@\S+.\S+').hasMatch(value)) {
                          /// comeca com string e aceita quantos caracteres necessario S+ em 3 grupos
                          return 'Please enter a valid CPF address';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _userEmail = value;
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
                        hintText: 'Telephone',
                        labelText: 'Telephone',
                        prefixIcon: Icons.phone,
                        onChanged: (value) => _telephone = value,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your telephone';
                          }
                          if (value.trim().length < 11) {
                            return 'Please enter your telephone correct';
                          }
                        }),
                    SizedBox(
                      height: Responsivity.automatic(28, mediaQueryData),
                    ),
                    const CustomTextWidget(title: 'Country'),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      titleButton: 'Confirm',
                    ),
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
