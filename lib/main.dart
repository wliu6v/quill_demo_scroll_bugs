import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: 80,
                color: const Color(0x44F38B7E),
                child: const Center(
                  child: Text('Header should scroll with page'),
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          // change the child to see how it worked.
          child: _quillEditor(),
          // child: _textEditor(),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: 80,
                color: const Color(0x44F38B7E),
                child: const Center(
                  child: Text('Bottom should scroll with page'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static String body =
      '[{"insert": "quillEditor-line 1\\n"},{"insert": "quillEditor-line 2\\n"},{"insert": "quillEditor-line 3\\n"},{"insert": "quillEditor-line 4\\n"},{"insert": "quillEditor-line 5\\n"},{"insert": "quillEditor-line 6\\n"},{"insert": "quillEditor-line 7\\n"},{"insert": "quillEditor-line 8\\n"},{"insert": "quillEditor-line 9\\n"},{"insert": "quillEditor-line 10\\n"},{"insert": "quillEditor-line 11\\n"},{"insert": "quillEditor-line 12\\n"},{"insert": "quillEditor-line 13\\n"},{"insert": "quillEditor-line 14\\n"},{"insert": "quillEditor-line 15\\n"},{"insert": "quillEditor-line 16\\n"},{"insert": "quillEditor-line 17\\n"},{"insert": "quillEditor-line 18\\n"},{"insert": "quillEditor-line 19\\n"},{"insert": "quillEditor-line 20\\n"},{"insert": "quillEditor-line 21\\n"},{"insert": "quillEditor-line 22\\n"},{"insert": "quillEditor-line 23\\n"},{"insert": "quillEditor-line 24\\n"},{"insert": "quillEditor-line 25\\n"},{"insert": "quillEditor-line 26\\n"},{"insert": "quillEditor-line 27\\n"},{"insert": "quillEditor-line 28\\n"},{"insert": "quillEditor-line 29\\n"},{"insert": "quillEditor-line 30\\n"},{"insert": "quillEditor-line 31\\n"},{"insert": "quillEditor-line 32\\n"},{"insert": "quillEditor-line 33\\n"},{"insert": "quillEditor-line 34\\n"},{"insert": "quillEditor-line 35\\n"},{"insert": "quillEditor-line 36\\n"},{"insert": "quillEditor-line 37\\n"},{"insert": "quillEditor-line 38\\n"},{"insert": "quillEditor-line 39\\n"},{"insert": "quillEditor-line 40\\n"},{"insert": "quillEditor-line 41\\n"},{"insert": "quillEditor-line 42\\n"},{"insert": "quillEditor-line 43\\n"},{"insert": "quillEditor-line 44\\n"},{"insert": "quillEditor-line 45\\n"},{"insert": "quillEditor-line 46\\n"},{"insert": "quillEditor-line 47\\n"},{"insert": "quillEditor-line 48\\n"},{"insert": "quillEditor-line 49\\n"},{"insert": "quillEditor-line 50\\n"},{"insert": "quillEditor-line 51\\n"},{"insert": "quillEditor-line 52\\n"},{"insert": "quillEditor-line 53\\n"},{"insert": "quillEditor-line 54\\n"},{"insert": "quillEditor-line 55\\n"},{"insert": "quillEditor-line 56\\n"},{"insert": "quillEditor-line 57\\n"},{"insert": "quillEditor-line 58\\n"},{"insert": "quillEditor-line 59\\n"},{"insert": "quillEditor-line 60\\n"},{"insert": "quillEditor-line 61\\n"}]';

  final QuillController _controller = QuillController(
      document: Document.fromJson(jsonDecode(body)),
      selection: const TextSelection.collapsed(offset: 0));
  final FocusNode _focusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();

  Widget _quillEditor() {
    return QuillEditor(
      controller: _controller,
      focusNode: _focusNode,
      scrollController: _scrollController,
      scrollable: false,
      padding: EdgeInsets.zero,
      autoFocus: false,
      readOnly: false,
      expands: true,
    );
  }

  TextEditingController textEditController = TextEditingController()
    ..text =
        'edittext-line 1\nedittext-line 2\nedittext-line 3\nedittext-line 4\nedittext-line 5\nedittext-line 6\nedittext-line 7\nedittext-line 8\nedittext-line 9\nedittext-line 10\nedittext-line 11\nedittext-line 12\nedittext-line 13\nedittext-line 14\nedittext-line 15\nedittext-line 16\nedittext-line 17\nedittext-line 18\nedittext-line 19\nedittext-line 20\nedittext-line 21\nedittext-line 22\nedittext-line 23\nedittext-line 24\nedittext-line 25\nedittext-line 26\nedittext-line 27\nedittext-line 28\nedittext-line 29\nedittext-line 30\nedittext-line 31\nedittext-line 32\nedittext-line 33\nedittext-line 34\nedittext-line 35\nedittext-line 36\nedittext-line 37\nedittext-line 38\nedittext-line 39\nedittext-line 40\nedittext-line 41\nedittext-line 42\nedittext-line 43\nedittext-line 44\nedittext-line 45\nedittext-line 46\nedittext-line 47\nedittext-line 48\nedittext-line 49\nedittext-line 50\nedittext-line 51\nedittext-line 52\nedittext-line 53\nedittext-line 54\nedittext-line 55\nedittext-line 56\nedittext-line 57\nedittext-line 58\nedittext-line 59\nedittext-line 60\nedittext-line 61\n';

  Widget _textEditor() {
    return TextField(
      controller: textEditController,
      maxLines: null,
    );
  }
}
