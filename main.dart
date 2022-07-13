import 'dart:io';
void main(){
  stdout.writeln("Enter a String to be reversed: ");
   var name = stdin.readLineSync();
  name = name.toString();
  String Revname = '';
  var reverse = name.split('');
  String reversed = reverse.toString();
  var u = reversed.length;
  var hm = [];
  for (var e = 1; e<reversed.length; e+=3){
 hm  += [reversed[reversed.length-(u-e)]]; }
  var i= hm.length-1;
  var j = hm.length;
  for ( i ; i<j; i--,j--){
if (j==1){j--;}
Revname += hm[i];
if (j==0){break;}

  }
print('Your reversed string is: $Revname');
}