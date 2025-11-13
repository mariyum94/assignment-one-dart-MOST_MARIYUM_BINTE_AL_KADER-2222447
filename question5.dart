// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
// TODO: Complete the following requirements:

// 1. Mixin Payable:
//    - Method: double calculateSalary(double baseSalary, double bonus)
//    - Method: void processPayment(double amount)
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    // TODO: Calculate total salary (base + bonus)
    double total= baseSalary+bonus;
    return total; // Placeholder - replace with actual implementation
  }
  
  void processPayment(double amount) {
    // TODO: Process payment
    print("Processing payment....");
    // Add your implementation here
  }
}

// 2. Mixin Reportable:
//    - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  String generateReport(String employeeName, String department) {
    // TODO: Generate report
    return "Monthly report for $employeeName in $department department"; // Placeholder - replace with actual implementation
  }
}

// 3. Abstract Class Employee:
//    - Properties: String name, String id, String department
//    - Abstract method: String getJobTitle()
//    - Abstract method: double getBaseSalary()
abstract class Employee {
  String name;
  String id;
  String department;
  
  Employee(this.name, this.id, this.department);
  
  String getJobTitle();
  double getBaseSalary();
  
  void displayInfo() {
    print("$name (ID: $id, Department: $department)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
//      - Additional property: int teamSize
//      - Override required methods
class Manager extends Employee with Payable, Reportable {
  int teamSize;
  
  Manager(String name, String id, String department, this.teamSize) : super(name, id, department);
  
  @override
  String getJobTitle() {
    // TODO: Return manager job title
    return "Manager"; // Placeholder - replace with actual implementation
  }
  
  @override
  double getBaseSalary() {
    // TODO: Return manager base salary
    return 8000.0; // Placeholder - replace with actual implementation
  }
  
  @override
  void displayInfo() {
    // TODO: Override to show manager-specific info
    // Add your implementation here
    print("${name} ( ID: ${id}, Designation: Manager, Department: ${department} )");
  }
}

//    - Developer extends Employee with Payable
//      - Additional property: String programmingLanguage
//      - Override required methods
class Developer extends Employee with Payable {
  String programmingLanguage;
  
  Developer(String name, String id, String department, this.programmingLanguage) : super(name, id, department);
  
  @override
  String getJobTitle() {
    // TODO: Return developer job title
    return "Senior Developer"; // Placeholder - replace with actual implementation
  }
  
  @override
  double getBaseSalary() {
    // TODO: Return developer base salary
    return 6000.0; // Placeholder - replace with actual implementation
  }
  
  @override
  void displayInfo() {
    // TODO: Override to show developer-specific info
    // Add your implementation here
    print("${name} ( ID: ${id}, Designation: Developer, Department: ${department} )");
  }
}

void main() {
  // 5. Create employees and demonstrate:
  //    - Salary calculation with bonus
  //    - Payment processing
  //    - Report generation (for managers)
  //    - Display all employee information
  // TODO: Create employees
  final maruf = Manager("Abdullah Al Maruf", "1206", "Marketing", 3);
  final mim = Developer("Mymuna Mim", "1325", "IT", "Java");

  // TODO: Demonstrate salary calculation with bonus
  final bonus = 10000.0;

  final salary1= maruf.getBaseSalary();
  final calculated1 = salary1 + bonus;
  print("Salary of Manager Including Bonus: ${calculated1}");

  final salary2= mim.getBaseSalary();
  final calculated2 = salary2 + bonus;
  print("Salary of Developer Including Bonus: ${calculated2}");

  // TODO: Display employee information
  maruf.displayInfo();
  mim.displayInfo();
}
