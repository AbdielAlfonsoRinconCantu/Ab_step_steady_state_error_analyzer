# Ab_step_steady_state_error_analyzer #
Given the numerator and denominator of a transfer function, this MATLAB script graphs the poles, the step response, tests the stability and computes the steady-state error for a step signal.

## Features ##
- Graphs the poles of a closed-loop transfer function.
- Displays step response.
- Determines the stability of the system.
- Computes the steady-state error for a step signal input.
- Comments on every line explaining their purpose.

## Requirements ##
- MATLAB.

## How to use ##
1. Open the `.m` file in MATLAB.
2. Modify the `numerator` and `denominator` variables depending on your transfer function.
3. Run the script.

## Notes ##
- The `numerator` and `denominator` are defined using only the coefficients of the $s$-variable.
- The `clear` function is used at the start of the program, make sure to save any previous variables before running the script.
- The following transfer function is already included in the script:
  
$$\frac{500(s^2+7s+10)}{s^3+30s^2+296s+960}$$

## How it works ##
| Element       | Description                                     |
|:-------------:|-------------------------------------------------|
| `clear`       | Erases previous variables.                      |
| `numerator`   | The numerator of the $s$-domain function.          |
| `denominator` | The denominator of the $s$-domain function.        |
| `tf`          | Builds the transfer function.                    |
| `feedback`    | Computes the closed-loop transfer function.     |
| `pole`        | Returns the poles of the system.                |
| `figure`      | Creates a new figure window.                    |
| `pzplot`      | Plots poles.                                    |
| `step`        | Plots the step response of the system.          |
| `isstable`    | Checks if the system is stable.                 |
| `disp`        | Displays text on the console.                   |
| `syms`        | Defines symbolic variable.                      |
| `limit`       | Evaluates a limit.                              |
| `double`      | Converts to double-precision floating-point values. |
| `num2str`     | Converts from number array to character array.  |


## Contributors ##
- Abdiel Alfonso Rincon Cantu

## Acknowledgments ##
Special thanks to Dr. Jorge Quishpe-Armas for providing the documentation that laid the groundwork for this script.

## **License** ##  
MIT License

Copyright (c) 2024 Abdiel Alfonso Rincon Cantu

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
