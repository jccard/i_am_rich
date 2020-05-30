import 'dart:io';

void main() {
  performTasks();
}

// 'async' modifier makes 'await' available
void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  print('Task 2 initiated');
  String result;

  Duration threeSeconds = Duration(seconds: 3);
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with this data from Task 2: $task2Data');
}