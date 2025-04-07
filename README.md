# 🐍✨ BiPit: Elevate your development experience with BiPit today!

---

## Introduction BiPit 🎉

Discover the power of **BiPit!** Automatically create project directories, 
integrate with your Python virtual environment, and customize PyInstaller 
parameters effortlessly. Enjoy volume control and celebrate task completion with 
audio playback.

Unleash your creativity with **BiPit!** Effortlessly set up project directories 
tailored to your configuration, seamlessly integrate with your Python virtual 
environment, and customize PyInstaller parameters to fit your needs. Take charge 
of your audio experience with adjustable volume settings and enjoy a rewarding 
audio cue upon task completion. Transform your development journey with BiPit now!

## Features 🌟

- Easy to find Project directory: BiPit automatically create a project directory 
is **`projek_`** in current directory. 📁✨

- Virtual Environment Integration: Simply specify the location of your Python 
virtual environment directory, ensuring that your project runs in the perfect 
isolated environment. 🐍🔒

- Customizable PyInstaller Parameters: Tailor your build process by adding 
parameters to PyInstaller directly in the configuration file. Whether you need 
**--onefile** for a single executable or **hidden imports** like 
--hidden-import=PIL,--hidden-import=PIL._imagingtk, and  
--hidden-import=PIL._tkinter_finder, Bipit has you covered! ⚙️🛠️

- Volume Control: Easily modify the speaker volume to suit your preferences, 
giving you complete control over your audio experience. 🔊🎶

- Audio Playback Upon Completion: Celebrate the successful completion of your 
tasks with a delightful audio playback, adding a touch of satisfaction to your 
workflow. 🎵🥳

## Usage 📖
To use BiPit, simply run the following command in your terminal:

```bash
bipit your_script_name.py
```

### Example:
```bash
bipit akudong.py
```

This command will generate a binary file named `akudong` in the current 
directory and in the default project directory, which is `projek_`. 

## Parameters ⚙️

**Bipit** accepts the following parameters :

1. **First Parameter**: 
   - **Description**: The name of the file to be processed. 📄
   - **Example**: `akudong.py`

2. **Second Parameter**: 
   - **Description**: Use `s` to disable audio playback. 🔇
   - **Example**: `s`

3. **Third Parameter**: 
   - **Description**: Use `b` or `d` to run PyInstaller without additional options. ⚙️
   - **Example**: `b` or `d`

### Example Command

To use Bipit with the parameters, use the following command:

```bash
bipit akudong.py s b
```

**Bipit** will process the file `akudong.py`, disable audio playback, 
and run PyInstaller without any additional options.

## Configuration ⚙️
You can modify the `configuration_binarypython.txt` file to set up the 
BiPit program according to your preferences.

### Accessing BiPit Globally 🌍
To make the BiPit command accessible from anywhere in your terminal:

```bash
sudo dpkg -i bipit.deb
```

## Download 📥
Just clone this repository.

---

Thank you for using BiPit! Happy coding! 🎉
