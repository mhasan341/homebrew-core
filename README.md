# xlist

`xlist` is a command-line tool to list folders with `.imageset` or `.colorset` extensions in Xcode asset catalogs.
more coming soon...

## Installation

### Homebrew (Recommended)

```bash
brew install xlist
```

### Usage
## List Folders
```bash
xlist
This will list all folders with .imageset or .colorset extensions in the default Xcode asset catalog (Assets.xcassets).
```
## List Folders in a Specific Directory
```bash
xlist -f folder_name
Replace folder_name with the name of the directory you want to list.
```
## List Nested Folders
```bash
xlist -n
This will recursively list folders in the specified directory.
```
## List Folders with Nesting
```bash
xlist -f folder_name -n
Combine both options to list nested folders in a specific directory.
```
### Contributing
If you find any issues or have suggestions for improvements, feel free to open an issue or create a pull request.

### License
This project is licensed under the MIT License.

