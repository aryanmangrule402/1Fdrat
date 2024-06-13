import 'dart:io';

void main(List<String> args) {
  // 7. Create a simple to-do application that allows user to add, remove, and view their task.

  List<String> tasks = [];

  while (true) {
    print("\nChoose an option:");
    print("\t1. Add task");
    print("\t2. Remove task");
    print("\t3. View tasks");
    print("\t4. Exit\n");

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case "1":
        addTask(tasks);
        break;
      case "2":
        removeTask(tasks);
        break;
      case "3":
        viewTasks(tasks);
        break;
      case "4":
        exit(0);
      default:
        print("\nInvalid choice. Please choose a valid option.");
    }
  }
}

void addTask(List<String> tasks) {
  print("\nEnter the task:");
  String task = stdin.readLineSync()!;
  tasks.add(task);
  print("\tTask added successfully!");
}

void removeTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print("\nNo tasks to remove.");
    return;
  }

  print("\nEnter the task number to remove:");
  viewTasks(tasks);

  try {
    int taskNumber = int.parse(stdin.readLineSync()!) - 1;

    if (taskNumber >= 0 && taskNumber < tasks.length) {
      String removedTask = tasks.removeAt(taskNumber);
      print("\nTask '$removedTask' removed successfully!");
    } else {
      print("\tInvalid task number. Please enter a valid task number.");
    }
  } catch (e) {
    print("\nInvalid input. Please enter a valid task number.");
  }
}

void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print("\n\tNo tasks available.");
  } else {
    for (int i = 0; i < tasks.length; i++) {
      print("${i + 1}. ${tasks[i]}");
    }
  }
}
