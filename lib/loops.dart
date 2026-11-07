void main() {
  List<String> names = ['Ali', 'Nour', 'Rahma', 'Saly', 'Amany'];
  for (int i = 0; i < 5; i++) {
    print(names[i]);
  }

  names.forEach((var i) {
    print(names);
  });

   // ignore: unused_local_variable
   for (var i in names) {
      print(names);
   }
}
