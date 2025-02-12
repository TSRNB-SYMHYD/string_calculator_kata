# String Calculator Kata

This repository contains an implementation of the String Calculator TDD Kata for the Incubyte TDD Assessment. Developed in Dart using Test-Driven Development (TDD), this project demonstrates a disciplined, incremental approach to building a well-tested and maintainable solution.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [TDD Process](#tdd-process)
- [Setup](#setup)

## Overview

The goal of this project is to implement a string calculator that meets the following requirements:

1. **Empty String:**  
   - Input: `""`  
   - Output: `0`

2. **Single Number:**  
   - Input: `"1"`  
   - Output: `1`

3. **Multiple Numbers:**  
   - The calculator can handle any amount of numbers separated by commas.
   - Examples:  
     - Input: `"1,5"` → Output: `6`  
     - Input: `"1,2,3,4"` → Output: `10`

4. **New Lines as Delimiters:**  
   - The calculator supports new lines between numbers.
   - Example:  
     - Input: `"1\n2,3"` → Output: `6`

5. **Custom Delimiters:**  
   - To change the delimiter, the input string starts with a separate line in the format `"//[delimiter]\n[numbers…]"`.
   - Example:  
     - Input: `"//;\n1;2"` → Output: `3`

6. **Negative Numbers Exception:**  
   - Calling `add` with a negative number will throw an exception with the message:  
     `"negative numbers not allowed <negative_number>"`.  
     - If there are multiple negative numbers, all should be listed in the exception message.
   - Example:  
     - Input: `"1,-2,3,-4"` → Exception message: `"negative numbers not allowed -2,-4"`

## Features

- **Empty String Handling:** Returns 0 for an empty input.
- **Single and Multiple Number Support:** Parses and sums numbers separated by commas or new lines.
- **Custom Delimiter Support:** Recognizes a custom delimiter defined in the input.
- **Negative Number Validation:** Throws an exception when negative numbers are present, listing all negatives in the error message.

## TDD Process

This project was developed using a strict Test-Driven Development (TDD) approach:

1. **Red:**  
   Write a failing test for each new feature or requirement.
2. **Green:**  
   Implement the minimal amount of code required to pass the test.
3. **Refactor:**  
   Clean up and improve the code while keeping all tests passing.

Each TDD cycle was committed individually with descriptive messages (e.g., "Add failing test: …", "Implement add() for …", "Refactor …") to clearly document the evolution of the solution.

## Setup

Ensure you have the [Dart SDK](https://dart.dev/get-dart) installed.

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/string_calculator_kata.git
   cd string_calculator_kata
