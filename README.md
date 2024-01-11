# Parking Management System

This is a simple console-based Vehicle Parking Management System written in Assembly language using Irvine32 library. The program allows users to park and manage different types of vehicles (rikshaws, cars, and buses). It provides options to view the parking records, delete the records, and exit the system.

## Prerequisites
- [Irvine32 library](https://github.com/Nikolay-Lysenko/Irvine) for Assembly language, make sure to include `irvine32.inc` in your project.

## How to Use
1. Clone the repository to your local machine.
2. Ensure that Irvine32 library is available and properly configured.
3. Assemble and run the program using an appropriate assembler (e.g., MASM).

## Program Features

### 1. Parking Menu
- Press 1 to park a rikshaw.
- Press 2 to park a car.
- Press 3 to park a bus.
- Press 4 to display parking records.
- Press 5 to delete all parking records.
- Press 6 to exit the system.

### 2. Parking Procedures
- The program includes separate procedures for parking rikshaws, cars, and buses.
- Each parking action updates the total number of vehicles parked and the total amount collected.

### 3. Display Parking Records
- Option 4 displays the total amount collected.
- It also shows the total number of vehicles parked, including the breakdown for rikshaws, cars, and buses.

### 4. Delete Parking Records
- Option 5 allows the user to delete all parking records.
- This action resets the counts and the total amount collected.

## Notes
- The program uses the Irvine32 library for input/output operations.
- Ensure that the library is properly configured before running the program.
- This is a basic implementation and can be extended with additional features.

Feel free to contribute to the project and make improvements!
