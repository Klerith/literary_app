import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:literary_app/presentation/providers/books/books_providers.dart';
import 'package:literary_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _HomeView(),
      ),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    ref.read(nowReadingBooksProvider.notifier).loadNextBooks();
  }

  @override
  Widget build(BuildContext context) {
    final nowReadingBooks = ref.watch(nowReadingBooksProvider);

    return Column(
      children: [
        CustomAppbar(),
        Expanded(
            child: ListView.builder(
          itemCount: nowReadingBooks.length,
          itemBuilder: (context, index) {
            final book = nowReadingBooks[index];
            return ListTile(
              title: Text(book.volumeInfo.title),
            );
          },
        )),
      ],
    );
  }
}
