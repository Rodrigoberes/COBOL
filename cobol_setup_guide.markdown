# COBOL Development Setup in VS Code

This guide outlines the steps to set up a COBOL development environment in Visual Studio Code (VS Code) using GnuCOBOL and relevant extensions.

## 2. Install a COBOL Extension in VS Code
1. Open VS Code and navigate to the **Extensions view** (Ctrl+Shift+X).
2. Search for "COBOL" in the Extensions Marketplace.
3. Install a suitable COBOL extension. Recommended options include:
   - **COBOL Language Support** (`broadcomMFD.cobol-language-support`): Provides syntax highlighting and basic language support.
   - **IBM Z Open Editor**: Ideal for IBM mainframe development.
   - **GnuCOBOL Debugger** (`OlegKunitsyn.gnucobol-debug`): Useful for debugging when using GnuCOBOL.

## 3. Write Your COBOL Code
1. Create a new file in VS Code with a `.cob` extension (e.g., `hello.cob`).
2. Write your COBOL program in this file.

## 4. Compile and Run (Using GnuCOBOL)
1. **Open the Integrated Terminal**:
   - In VS Code, go to **Terminal** > **New Terminal**.
2. **Compile**:
   - Use the `cobc` command to compile your COBOL source file. For example:
     ```bash
     cobc -x hello.cob
     ```
   - This command compiles `hello.cob` and generates an executable file (e.g., `hello` on Linux/macOS or `hello.exe` on Windows).
3. **Run**:
   - Execute the compiled program. For example:
     ```bash
     ./hello
     ```
   - On Windows, you may need to run `hello` or `hello.exe` depending on your setup.