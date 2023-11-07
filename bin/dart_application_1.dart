import 'dart:math';

void main(List<String> arguments) {
  var list = List.generate(10, (index) => Random().nextInt(100));
  var string = "dcebafuqwioe";
  var listString = ["d","c","e","b","a","f","u","q","w","i","o","e"];
  var listBool = [true,false,true,false,true];
  var list2 =[list, list];
  print(list);
  allSort(list);
  allSort(string);
  allSort(listString);
  allSort(listBool);
  allSort(list2);

}

void selectionSort(List<int> numbers){
  var min = 0;
  for(int i = 0; i < numbers.length; i++){
    min = i;
    for(int j =i+1; j<numbers.length; j++){
      if(numbers[j]<numbers[min]){
        min = j;
      }
    }
    var temp = numbers[i];
    numbers[i] = numbers[min];
    numbers[min] = temp;
  }
  print(numbers);
}

void stringSelectionSort(String string){
  var min =0;
  for (int i=0;i<string.length;i++){
    min = i;
    for (int j = i+1; j<string.length;j++){
      if(string[j].compareTo(string[min]) <0){
        min = j;
      }
    }
      var temp = string[i];
      string = string.replaceFirst(string[i], string[min]);
      string = string.replaceFirst(string[min], temp,i+1);
  }
  print(string);
}

void allSort(dynamic collection){
  switch(collection){
    case String(): 
    collection = collection.split('').toList();
  }
  try{
  var min =0;
  for (int i=0;i<collection.length;i++){
    min = i;
    for (int j = i+1; j<collection.length;j++){
    
      if(collection[j].compareTo(collection[min])<0){
        min = j;
      }
    }
      var temp = collection[i];
      collection[i] = collection[min];
      collection[min] = temp;
  }
  print(collection);
  }
  on NoSuchMethodError {
      print("Эти данные нельзя сравнить");
      }

}


