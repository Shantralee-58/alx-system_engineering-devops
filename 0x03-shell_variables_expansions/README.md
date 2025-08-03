# 0x03. Shell, Init Files, Variables and Expansions

This project covers foundational Bash shell concepts focusing on shell initialization files, shell variables, expansions, arithmetic operations, and aliases. It is designed to help understand how the shell interprets commands, manages variables, performs arithmetic, and handles aliases.

## Learning Objectives

- Understand shell initialization files like `/etc/profile` and `~/.bashrc`.
- Differentiate between local and global shell variables.
- Know reserved variables like `HOME`, `PATH`, and `PS1`.
- Understand shell expansions: parameter, command substitution, arithmetic expansion.
- Know how to create, list, and disable aliases.
- Perform basic arithmetic operations in the shell.
- Understand quoting and command substitution with `$()` and backticks.
- Manage environment variables and shell variable scopes.

## File Descriptions

| File                  | Description                                                      |
|-----------------------|------------------------------------------------------------------|
| `0-alias`             | Creates an alias `ls` to `rm *` (dangerous, for learning only). |
| `1-hello_you`          | Prints "hello <current_user>".                                  |
| `2-path`               | Adds `/action` directory to the end of the `PATH` environment variable. |
| `3-paths`              | Counts and prints the number of directories in the `PATH`.       |
| `4-global_variables`   | Lists all environment (global) variables.                        |
| `5-local_variables`    | Lists all local shell variables and functions.                   |
| `6-create_local_variable` | Creates a local variable `BEST` with value "School".           |
| `7-create_global_variable`| Creates a global variable `BEST` with value "School".          |
| `8-true_knowledge`     | Adds 128 to the value stored in the environment variable `TRUEKNOWLEDGE` and prints the result. |
| `9-divide_and_rule`    | Divides the environment variable `POWER` by `DIVIDE` and prints the result. |
| `10-love_exponent_breath` | Raises `BREATH` to the power of `LOVE` and prints the result. |
| `11-binary_to_decimal` | Converts a binary number stored in the environment variable `BINARY` to decimal and prints it. |
| `12-combinations`      | Prints all two-letter combinations from `a` to `z`, excluding "oo". |
| `13-print_float`       | Prints a floating-point number stored in `NUM` with two decimals. |
| `100-decimal_to_hexadecimal` | Converts a decimal number in `DECIMAL` to hexadecimal and prints it. |
| `101-rot13`            | Encodes/decodes text using ROT13 encryption (ASCII).             |
| `102-odd`              | Prints every other line from the input, starting with the first. |
| `103-water_and_stir`   | Adds two numbers from custom base-encoded environment variables `WATER` and `STIR` and outputs in a custom base `bestchol`. |

## Usage

- All scripts are Bash scripts starting with `#!/bin/bash`.
- Scripts modifying the environment (e.g., changing PATH or defining variables) should be sourced:
  ```bash
  source ./2-path

