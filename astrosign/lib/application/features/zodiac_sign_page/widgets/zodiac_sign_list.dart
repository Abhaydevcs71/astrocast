import 'package:astrosign/application/features/result_page/result_page.dart';
import 'package:astrosign/application/features/zodiac_sign_page/bloc/sign_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignBlocWrapper extends StatelessWidget {
  const SignBlocWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignListBloc(),
      child: const ZodiacSignList(),
    );
  }
}

class ZodiacSignList extends StatefulWidget {
  const ZodiacSignList({super.key});

  @override
  State<ZodiacSignList> createState() => _ZodiacSignListState();
}

class _ZodiacSignListState extends State<ZodiacSignList> {
  @override
  void initState() {
    BlocProvider.of<SignListBloc>(context).add(SignRequestedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignListBloc, SignListState>(
      builder: (context, state) {
        if (state is SignStateLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SignStateLoaded) {
          return GridView.count(
            padding: const EdgeInsets.only(bottom: 30),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              children: List.generate(12, (index) {
                return SignCard(
                  state: state,
                  index: index,
                );
              }));
        } else if (state is SignStateError) {
          return const Center(
            child: Text("Error"),
          );
        }
        return const Center(
          child: Text("Error Occured"),
        );
      },
    );
  }
}

class SignCard extends StatelessWidget {
  final SignStateLoaded state;
  final int index;
  const SignCard({super.key, required this.state, required this.index});

  @override
  Widget build(BuildContext context) {
    final sign = state.sign[index];
    return InkResponse(
      onTap: () {   
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>   ResultBlocWrapper(zodiacSign: sign['name'], image: sign['image'],),
            ));
      },
      child: Container(
        height: 50,
        width: 50,
        color: const Color(0xff222540),
      //  decoration: BoxDecoration(
      //   image: DecorationImage(
          
      //     image: AssetImage(sign['image']))
      //  ),
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 25,
              bottom: 0,
              right: 0,
              child: Image.asset(sign['image'],fit: BoxFit.fill,)),
            Positioned(
              top: 10,
              left: 10,
              child: Text(
                sign['name'].toString().toUpperCase(),
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
