import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  final Function(String) onRemove;

  TransactionItem({
    required this.transaction,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: FittedBox(
              child: Text('R\$${transaction.value}'),
            ),
          ),
        ),
        title: Text(
          transaction.title,
          style: theme.textTheme.headline6,
        ),
        subtitle: Text(
          DateFormat('d MMM y').format(transaction.date),
          style: TextStyle(
            color: Colors.grey.shade700,
          ),
        ),
        trailing: MediaQuery.of(context).size.width > 480
            ? TextButton.icon(
                onPressed: () => onRemove(transaction.id),
                icon: Icon(Icons.delete, color: theme.colorScheme.error),
                label: Text('Excluir',
                    style: TextStyle(
                      color: theme.colorScheme.error,
                    )),
              )
            : IconButton(
                icon: Icon(Icons.delete),
                color: Theme.of(context).colorScheme.error,
                onPressed: () => onRemove(transaction.id),
              ),
      ),
    );
  }
}
