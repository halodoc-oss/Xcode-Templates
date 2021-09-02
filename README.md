# Xcode-templates
Provides the Xcode Template to create a feature using MVVM+Repository Pattern


## Installation

1. Run swift install.swift
This would copy the templates and code snippets to $HOME/Library/Developer/Xcode/ , in-turn allows the templates and code snippets to be discoverable by Xcode

## Template Usage

### Xcode templates has three different types:
1. Feature - Provides blueprint for implementation of a feature
2. Repository - Defines blueprint for Data/Domain Layer (for refactoring the existing MVVM)
3. ViewController - Defines blueprint for View (ViewController + XIB)

#### How to Use

1. Select the required template (ex. Feature)

![ScreenShot](./Images/Choose_A_Template.png?raw=true)

2. Give a feature Name

![ScreenShot](./Images/Feature_Name.png?raw=true)

3. Select the View Type : XIB/StoryBoard/None

![ScreenShot](./Images/View_Type.png?raw=true)

4. Select the Create List Objects based on your requirement

![ScreenShot](./Images/Create_List_Models.png?raw=true)

5. Click Next

6. The Xcode Creates the Actual Folders on devices and we cannot create a folder reference.

![ScreenShot](./Images/Folders.png?raw=true)

7. Click on the newly created folder and click on Delete > Remove References

8. Click on Add Files > Select the Newly Created Feature Folder. Make sure Create Groups is Selected in the Added Folders

![ScreenShot](./Images/References_Folders.png?raw=true)

10. Click on Add

#### Code Snippet Usage

1. In the Xcode search for tableviewdelegate

![ScreenShot](./Images/Code_Snippet.png?raw=true)

2. Select the Code Snippet or Click on Enter

![ScreenShot](./Images/Code_Snippet_Result.png?raw=true)