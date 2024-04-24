
//enums are classes
enum EmployeeType {
  swe, // index = 0 // e1.index (return index)
  finance, // index = 1
  marketing // index = 2
}


class Employee{
  String name;
  EmployeeType type;

  Employee( this.name, this.type);
}

void main(){
 
  EmployeeType ep = EmployeeType.marketing;

  // ----------------------------------------------------

  // final e1 = Employee("Ram",'SWE');
  // final e2 = Employee("Lux","Finance");
  // final e3 = Employee("Row","bal bal")

  final e1 = Employee("Ram",EmployeeType.swe);
  final e2 = Employee("Lux",EmployeeType.finance);
  final e3 = Employee("Row",EmployeeType.marketing);

}