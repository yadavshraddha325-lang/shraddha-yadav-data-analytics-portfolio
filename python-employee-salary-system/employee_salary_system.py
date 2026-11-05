"""Employee Salary Management System.

Author: Shraddha Yadav
Python Phase 3, Level 2 practical examination project.

The program stores employee records in memory, calculates gross and net salary
when required, and provides eight menu-driven employee/payroll modules.
Only the Python standard library is used.
"""

import math


def get_starter_employees():
    """Return a fresh list containing the ten starter employee records."""
    return [
        {"employee_id": "E101", "name": "James Whitfield", "department": "Sales", "basic_salary": 35000.0, "allowance": 5000.0, "bonus": 3000.0, "deduction": 2000.0},
        {"employee_id": "E102", "name": "Charlotte Bennett", "department": "HR", "basic_salary": 40000.0, "allowance": 4000.0, "bonus": 3500.0, "deduction": 1500.0},
        {"employee_id": "E103", "name": "Daniel Okonkwo", "department": "IT", "basic_salary": 50000.0, "allowance": 6000.0, "bonus": 4000.0, "deduction": 3000.0},
        {"employee_id": "E104", "name": "Sophie Hargreaves", "department": "IT", "basic_salary": 62000.0, "allowance": 7000.0, "bonus": 5000.0, "deduction": 4000.0},
        {"employee_id": "E105", "name": "Callum Fraser", "department": "Finance", "basic_salary": 28000.0, "allowance": 3000.0, "bonus": 1500.0, "deduction": 1200.0},
        {"employee_id": "E106", "name": "Amelia Clarke", "department": "Sales", "basic_salary": 24000.0, "allowance": 2500.0, "bonus": 1000.0, "deduction": 800.0},
        {"employee_id": "E107", "name": "Omar Rahman", "department": "IT", "basic_salary": 45000.0, "allowance": 5000.0, "bonus": 2500.0, "deduction": 2500.0},
        {"employee_id": "E108", "name": "Grace Adeyemi", "department": "HR", "basic_salary": 30000.0, "allowance": 3500.0, "bonus": 2000.0, "deduction": 1500.0},
        {"employee_id": "E109", "name": "Thomas Barlow", "department": "Operations", "basic_salary": 55000.0, "allowance": 6000.0, "bonus": 4500.0, "deduction": 3500.0},
        {"employee_id": "E110", "name": "Niamh O'Sullivan", "department": "Finance", "basic_salary": 38000.0, "allowance": 4000.0, "bonus": 2000.0, "deduction": 1800.0},
    ]


def calculate_salary(employee):
    """Calculate gross and net salary from the four stored salary components."""
    gross_salary = employee["basic_salary"] + employee["allowance"] + employee["bonus"]
    net_salary = gross_salary - employee["deduction"]
    return gross_salary, net_salary


def format_currency(amount):
    """Format a salary amount as pounds sterling for readable console output."""
    if float(amount).is_integer():
        return f"£{amount:,.0f}"
    return f"£{amount:,.2f}"


def prompt_non_empty(prompt_text):
    """Keep asking until the user enters text containing at least one character."""
    while True:
        value = input(prompt_text).strip()
        if value:
            return value
        print("Input cannot be blank. Please try again.")


def prompt_non_negative_number(prompt_text, field_name):
    """Accept a finite numeric value of zero or more, retrying invalid input."""
    while True:
        raw_value = input(prompt_text).strip().replace(",", "")
        try:
            value = float(raw_value)
        except ValueError:
            print(f"Invalid entry. {field_name} must be a number. Please try again.")
            continue

        if not math.isfinite(value):
            print(f"Invalid entry. {field_name} must be a finite number. Please try again.")
            continue

        if value < 0:
            print(f"Invalid entry. {field_name} cannot be negative. Please try again.")
            continue

        return value


def prompt_menu_choice(prompt_text, valid_choices):
    """Keep asking until the user enters one of the supplied menu choices."""
    while True:
        choice = input(prompt_text).strip()
        if choice in valid_choices:
            return choice
        print(f"Invalid choice. Please enter one of: {', '.join(sorted(valid_choices))}.")


def find_employee_by_id(employees, employee_id):
    """Find an employee by ID without treating upper/lower case as different."""
    target = employee_id.strip().casefold()
    for employee in employees:
        if employee["employee_id"].casefold() == target:
            return employee
    return None


def find_employee_by_name(employees, employee_name):
    """Find an employee by full name using a case-insensitive comparison."""
    target = employee_name.strip().casefold()
    for employee in employees:
        if employee["name"].casefold() == target:
            return employee
    return None


def display_employee_record(employee, heading="EMPLOYEE RECORD"):
    """Display every stored field plus freshly calculated gross and net salary."""
    gross_salary, net_salary = calculate_salary(employee)
    print(f"\n--- {heading} ---")
    print(f"Employee ID   : {employee['employee_id']}")
    print(f"Employee Name : {employee['name']}")
    print(f"Department    : {employee['department']}")
    print(f"Basic Salary  : {format_currency(employee['basic_salary'])}")
    print(f"Allowance     : {format_currency(employee['allowance'])}")
    print(f"Bonus         : {format_currency(employee['bonus'])}")
    print(f"Deduction     : {format_currency(employee['deduction'])}")
    print(f"Gross Salary  : {format_currency(gross_salary)}")
    print(f"Net Salary    : {format_currency(net_salary)}")


def add_employee(employees):
    """Module 1: validate seven fields and add one new employee to the shared list."""
    print("\n--- ADD NEW EMPLOYEE ---")

    while True:
        employee_id = prompt_non_empty("Employee ID    : ").upper()
        if find_employee_by_id(employees, employee_id) is None:
            break
        print(f"Employee ID {employee_id} already exists. Please enter a unique ID.")

    name = prompt_non_empty("Employee Name  : ")
    department = prompt_non_empty("Department     : ")
    basic_salary = prompt_non_negative_number("Basic Salary   : ", "Basic Salary")
    allowance = prompt_non_negative_number("Allowance      : ", "Allowance")
    bonus = prompt_non_negative_number("Bonus          : ", "Bonus")
    deduction = prompt_non_negative_number("Deduction      : ", "Deduction")

    employee = {
        "employee_id": employee_id,
        "name": name,
        "department": department,
        "basic_salary": basic_salary,
        "allowance": allowance,
        "bonus": bonus,
        "deduction": deduction,
    }
    employees.append(employee)

    gross_salary, net_salary = calculate_salary(employee)
    print(f"\nEmployee {employee_id} added successfully.")
    print(f"Gross Salary: {format_currency(gross_salary)}  |  Net Salary: {format_currency(net_salary)}")


def view_all_employees(employees):
    """Module 2: display every employee in one dynamically aligned console table."""
    print("\n--- ALL EMPLOYEES ---")
    if not employees:
        print("No employees are currently stored.")
        return

    rows = []
    for employee in employees:
        gross_salary, net_salary = calculate_salary(employee)
        rows.append(
            (
                employee["employee_id"],
                employee["name"],
                employee["department"],
                format_currency(employee["basic_salary"]),
                format_currency(gross_salary),
                format_currency(net_salary),
            )
        )

    id_width = max(len("ID"), max(len(row[0]) for row in rows)) + 2
    name_width = max(len("NAME"), max(len(row[1]) for row in rows)) + 2
    department_width = max(len("DEPARTMENT"), max(len(row[2]) for row in rows)) + 2
    basic_width = max(len("BASIC"), max(len(row[3]) for row in rows)) + 2
    gross_width = max(len("GROSS"), max(len(row[4]) for row in rows)) + 2
    net_width = max(len("NET"), max(len(row[5]) for row in rows)) + 2

    header = (
        f"{'ID':<{id_width}}"
        f"{'NAME':<{name_width}}"
        f"{'DEPARTMENT':<{department_width}}"
        f"{'BASIC':>{basic_width}}"
        f"{'GROSS':>{gross_width}}"
        f"{'NET':>{net_width}}"
    )
    print(header)
    print("-" * len(header))

    for row in rows:
        print(
            f"{row[0]:<{id_width}}"
            f"{row[1]:<{name_width}}"
            f"{row[2]:<{department_width}}"
            f"{row[3]:>{basic_width}}"
            f"{row[4]:>{gross_width}}"
            f"{row[5]:>{net_width}}"
        )


def search_employee(employees):
    """Module 3: search by employee ID or full employee name and show the record."""
    print("\n--- SEARCH EMPLOYEE ---")
    if not employees:
        print("No employees are currently stored, so there is nothing to search.")
        return

    print("1. Search by Employee ID")
    print("2. Search by Employee Name")
    choice = prompt_menu_choice("Choose search type (1-2): ", {"1", "2"})

    if choice == "1":
        search_value = prompt_non_empty("Enter Employee ID: ")
        employee = find_employee_by_id(employees, search_value)
    else:
        search_value = prompt_non_empty("Enter Employee Name: ")
        employee = find_employee_by_name(employees, search_value)

    if employee is None:
        print(f"No employee matched '{search_value}'.")
        return

    display_employee_record(employee, "SEARCH RESULT")


def calculate_salary_module(employees):
    """Module 4: show a payslip-style salary calculation for one selected employee."""
    print("\n--- CALCULATE SALARY ---")
    if not employees:
        print("No employees are currently stored.")
        return

    employee_id = prompt_non_empty("Enter Employee ID: ")
    employee = find_employee_by_id(employees, employee_id)
    if employee is None:
        print(f"Employee ID {employee_id} was not found.")
        return

    gross_salary, net_salary = calculate_salary(employee)
    print("\n========================================")
    print("             SALARY BREAKDOWN")
    print("========================================")
    print(f"Employee        : {employee['name']} ({employee['employee_id']})")
    print(f"Department      : {employee['department']}")
    print("----------------------------------------")
    print(f"Basic Salary    : {format_currency(employee['basic_salary']):>14}")
    print(f"Allowance       : {format_currency(employee['allowance']):>14}")
    print(f"Bonus           : {format_currency(employee['bonus']):>14}")
    print("----------------------------------------")
    print(f"Gross Salary    : {format_currency(gross_salary):>14}")
    print(f"Deduction       : {format_currency(employee['deduction']):>14}")
    print("----------------------------------------")
    print(f"Net Salary      : {format_currency(net_salary):>14}")
    print("========================================")


def salary_analysis(employees):
    """Module 5: calculate the six required company-wide statistics using net salary."""
    print("\n========== SALARY ANALYSIS ==========")
    if not employees:
        print("No employees are currently stored, so salary analysis cannot be calculated.")
        print("=====================================")
        return

    salary_rows = []
    for employee in employees:
        _, net_salary = calculate_salary(employee)
        salary_rows.append((employee, net_salary))

    highest_employee, highest_net = max(salary_rows, key=lambda row: row[1])
    lowest_employee, lowest_net = min(salary_rows, key=lambda row: row[1])
    total_payroll = sum(net_salary for _, net_salary in salary_rows)
    average_net = total_payroll / len(salary_rows)
    more_than_50000 = sum(1 for _, net_salary in salary_rows if net_salary > 50000)
    less_than_30000 = sum(1 for _, net_salary in salary_rows if net_salary < 30000)

    print(f"Total Employees            : {len(employees)}")
    print(
        "Highest Net Salary         : "
        f"{highest_employee['name']} ({highest_employee['employee_id']}) - {format_currency(highest_net)}"
    )
    print(
        "Lowest Net Salary          : "
        f"{lowest_employee['name']} ({lowest_employee['employee_id']}) - {format_currency(lowest_net)}"
    )
    print(f"Average Net Salary         : {format_currency(average_net)}")
    more_word = "employee" if more_than_50000 == 1 else "employees"
    less_word = "employee" if less_than_30000 == 1 else "employees"
    print(f"Earning more than £50,000  : {more_than_50000} {more_word}")
    print(f"Earning less than £30,000  : {less_than_30000} {less_word}")
    print(f"Total Annual Payroll Cost  : {format_currency(total_payroll)} (net)")
    print("=====================================")


def department_analysis(employees):
    """Module 6: calculate the required net-salary statistics for one department."""
    print("\n--- DEPARTMENT ANALYSIS ---")
    if not employees:
        print("No employees are currently stored, so department analysis cannot be calculated.")
        return

    department_name = prompt_non_empty("Enter department name: ")
    matching_employees = [
        employee
        for employee in employees
        if employee["department"].casefold() == department_name.casefold()
    ]

    if not matching_employees:
        print(f"No employees were found in the '{department_name}' department.")
        return

    salary_rows = []
    for employee in matching_employees:
        _, net_salary = calculate_salary(employee)
        salary_rows.append((employee, net_salary))

    total_salary = sum(net_salary for _, net_salary in salary_rows)
    average_salary = total_salary / len(salary_rows)
    highest_employee, highest_salary = max(salary_rows, key=lambda row: row[1])
    lowest_employee, lowest_salary = min(salary_rows, key=lambda row: row[1])
    display_name = matching_employees[0]["department"]

    print(f"\nDEPARTMENT ANALYSIS  -  {display_name}")
    print("----------------------------------------")
    print(f"Number of Employees : {len(matching_employees)}")
    print(f"Total Salary        : {format_currency(total_salary)} (annual net)")
    print(f"Average Salary      : {format_currency(average_salary)}")
    print(f"Highest Salary      : {format_currency(highest_salary)} ({highest_employee['name']})")
    print(f"Lowest Salary       : {format_currency(lowest_salary)} ({lowest_employee['name']})")


def update_employee(employees):
    """Module 7: locate an employee by ID and update exactly one permitted field."""
    print("\n--- UPDATE EMPLOYEE ---")
    if not employees:
        print("No employees are currently stored, so there is nothing to update.")
        return

    employee_id = prompt_non_empty("Enter Employee ID to update: ")
    employee = find_employee_by_id(employees, employee_id)
    if employee is None:
        print(f"Employee ID {employee_id} was not found.")
        return

    display_employee_record(employee, "RECORD BEFORE UPDATE")
    print("\nChoose one field to update:")
    print("1. Department")
    print("2. Basic Salary")
    print("3. Allowance")
    print("4. Bonus")
    print("5. Deduction")
    choice = prompt_menu_choice("Enter choice (1-5): ", {"1", "2", "3", "4", "5"})

    if choice == "1":
        employee["department"] = prompt_non_empty("New Department: ")
    elif choice == "2":
        employee["basic_salary"] = prompt_non_negative_number("New Basic Salary: ", "Basic Salary")
    elif choice == "3":
        employee["allowance"] = prompt_non_negative_number("New Allowance: ", "Allowance")
    elif choice == "4":
        employee["bonus"] = prompt_non_negative_number("New Bonus: ", "Bonus")
    else:
        employee["deduction"] = prompt_non_negative_number("New Deduction: ", "Deduction")

    print("\nEmployee updated successfully.")
    display_employee_record(employee, "RECORD AFTER UPDATE")


def delete_employee(employees):
    """Module 8: locate by ID, show the record, confirm, then safely delete it."""
    print("\n--- DELETE EMPLOYEE ---")
    if not employees:
        print("No employees are currently stored, so there is nothing to delete.")
        return

    employee_id = prompt_non_empty("Enter Employee ID to delete: ")
    employee = find_employee_by_id(employees, employee_id)
    if employee is None:
        print(f"Employee ID {employee_id} was not found. Nothing was deleted.")
        return

    display_employee_record(employee, "RECORD TO DELETE")
    while True:
        confirmation = input("\nConfirm deletion (Y/N): ").strip().casefold()
        if confirmation in {"y", "yes"}:
            employees.remove(employee)
            print(f"Employee {employee['employee_id']} - {employee['name']} deleted successfully.")
            return
        if confirmation in {"n", "no"}:
            print("Deletion cancelled. No record was removed.")
            return
        print("Invalid response. Please enter Y or N.")


def display_main_menu():
    """Display the numbered menu containing all eight modules and the exit option."""
    print("\n========================================")
    print("     EMPLOYEE SALARY MANAGEMENT SYSTEM")
    print("========================================")
    print("1. Add Employee")
    print("2. View All Employees")
    print("3. Search Employee")
    print("4. Calculate Salary")
    print("5. Salary Analysis")
    print("6. Department Analysis")
    print("7. Update Employee")
    print("8. Delete Employee")
    print("9. Exit")
    print("========================================")


def main():
    """Run the main menu loop continuously until the user explicitly chooses option 9."""
    employees = get_starter_employees()

    while True:
        display_main_menu()
        choice = prompt_menu_choice("Enter your choice (1-9): ", set("123456789"))

        if choice == "1":
            add_employee(employees)
        elif choice == "2":
            view_all_employees(employees)
        elif choice == "3":
            search_employee(employees)
        elif choice == "4":
            calculate_salary_module(employees)
        elif choice == "5":
            salary_analysis(employees)
        elif choice == "6":
            department_analysis(employees)
        elif choice == "7":
            update_employee(employees)
        elif choice == "8":
            delete_employee(employees)
        else:
            print("\nThank you for using the Employee Salary Management System. Goodbye!")
            break


if __name__ == "__main__":
    main()
