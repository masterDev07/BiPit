```markdown
# Bipit 🐍✨

**Bipit** is a program designed to create binary Python files on Linux for a 
single `.py` file. 

## Features 🌟
- Automatically creates a project directory as specified in the configuration 
file.
- Requires the location of the Python virtual environment directory.

## Usage 📖
To use Bipit, simply run the following command in your terminal:

```bash
./bipit your_script_name.py
```

### Example:
```bash
./bipit akudong.py
```

This command will generate a binary file named `akudong` in the current 
directory and in the default project directory, which is `projek_`. 

## Configuration ⚙️
You can modify the `configuration_binarypython.txt` file to set up the Bipit 
program according to your preferences. 

### Accessing Bipit Globally 🌍
To make the Bipit command accessible from anywhere in your terminal, you can add 
an alias by modifying your shell configuration file (e.g., `.bashrc` or `.zshrc`):

```bash
alias bipit='/path/to/bipit'
```

## Download 📥
Just clone this repository.

---

Thank you for using Bipit! Happy coding! 🎉
```
