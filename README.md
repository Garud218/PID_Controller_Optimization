# PID_Controller_Optimization

## Project Overview
This repository contains the implementation and documentation of the **PID Controller Optimization** project, conducted as a course project for **ChE381** under the guidance of **Prof. Ishan Bajaj**. The project spanned from **October 2024 to November 2024** and focuses on optimizing PID controller performance for industrial systems, particularly a three-tank cascade system.

## Objectives
- Design a PID optimization framework to minimize Integral Absolute Error (IAE), achieving a reliable score of **2.4166**.
- Benchmark classical PI tuning methods (Ziegler-Nichols, Skogestad IMC, Robust Response Time) on a three-tank cascade system.
- Enhance PI controller performance by **80%** through fine-tuning the proportional gain (0.03 → 0.24).
- Demonstrate that the optimized PID delivers **4x better performance** than classical PI for third-order systems (IAE 9.45 → 2.41).

## Features
- **Optimization Framework**: Implements a PID optimization strategy to minimize IAE using advanced tuning techniques.
- **Benchmarking**: Evaluates classical PI tuning methods including Ziegler-Nichols, Skogestad IMC, and Robust Response Time on a three-tank cascade system.
- **Performance Enhancement**: Achieves an 80% improvement in PI controller performance through proportional gain optimization.
- **Comparative Analysis**: Shows a 4x performance boost of the optimized PID over classical PI for third-order systems.

## Installation and Setup
### Prerequisites
- MATLAB with the Control System Toolbox installed.
- Basic knowledge of control systems and PID tuning methodologies.

### Steps to Run
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Garud218/PID_Controller_Optimization.git
   ```
2. **Navigate to the Project Directory**:
   ```bash
   cd PID_Controller_Optimization
   ```
3. **Open MATLAB** and load the project workspace.
4. **Execute the Main Scripts**:
   - Run `pid_optimization_script.m` to minimize IAE and generate optimization results.
   - Run `pi_benchmark_script.m` to benchmark classical PI tuning methods.
   - Run `performance_comparison.m` to compare optimized PID with classical PI.
5. **Analyze Results**: Output files and plots will be saved in the `results` folder.

## Project Structure
- `src/`: Contains all MATLAB scripts and functions.
  - `pid_optimization_script.m`: Main script for PID optimization and IAE minimization.
  - `pi_benchmark_script.m`: Benchmarks classical PI tuning methods.
  - `performance_comparison.m`: Compares optimized PID with classical PI.
- `data/`: Input data files and system parameters.
- `results/`: Output files, including IAE scores and performance plots.
- `docs/`: Additional documentation and reports.
- `README.md`: This file.

## Results
- Achieved an IAE score of **2.4166** with the optimized PID framework.
- Demonstrated an **80% performance increase** in PI controller through proportional gain tuning from 0.03 to 0.24.
- Showed a **4x improvement** in performance for third-order systems, reducing IAE from 9.45 to 2.41 compared to classical PI.

## Contributing
Contributions are welcome! To contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m "Add new feature"`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request with a detailed description of your changes.


## Acknowledgments
- **Prof. Ishan Bajaj** for mentorship and guidance.
- The ChE381 course team for the opportunity to explore PID optimization.
- MATLAB for providing the necessary tools for control system analysis.

## Contact
For questions or suggestions, please open an issue on the GitHub repository or contact the project maintainer at [Garud218](https://github.com/Garud218).
