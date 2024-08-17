import 'package:flutter/material.dart';

class Sudoku extends StatelessWidget {
  const Sudoku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Center(child: Text('Sudoku')),
        ),
        body: const Center(
          child: Column(
            children: [
              Spacer(),
              Board(),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(child: Text('Option 1')),
                      ),
                      Expanded(
                        child: Center(child: Text('Option 2')),
                      ),
                      Expanded(
                        child: Center(child: Text('Option 3')),
                      ),
                      Expanded(
                        child: Center(child: Text('Option 4')),
                      ),
                    ], 
                  ))
            ],
          ),
        ));
  }
}



class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(100.0),
      child: const Column(
        children: [
          Row(
            children: [
              BlockContainer(),
              BlockContainer(),
            ],
          ),
          Row(
            children: [
              BlockContainer(),
              BlockContainer(),
            ],
          ),
        ],
      ),
    );
  }
}


class Block extends StatelessWidget {
  const Block({super.key, required this.value});

  final String value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.inversePrimary
            )
          ),
          width: 70,
          height: 70,
          child: Center(child: Text(value)),
        ),
      ),
    );
  }
}


class BlockContainer extends StatelessWidget {
  const BlockContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(    
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.inversePrimary,
        )
      ),
      child: const Padding(
        padding: EdgeInsets.all(2.0),
        child: Column(
          children: [
            RowBlock(),
            RowBlock(),
          ],
        ),
      ),
    );
  }
}

class RowBlock extends StatelessWidget {
  const RowBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Block(value: "1"),
        Block(value: "2"),
      ],
    );
  }
}