import Foundation

struct Constants {

    struct CommandLineValues {
        static let yes = "Y"
        static let no = "N"
    }
    struct File {
        static let templateNames = ["Feature",
                                    "ViewController",
                                    "Repository"]
        static let xctemplate = ".xctemplate"
        static let codeSnippets = ["Decoder",
                                   "Encoder",
                                   "LogError",
                                   "LogInfo",
                                   "LogWarning",
                                   "Nias",
                                   "TableViewDelegate"]
        static let codesnippet = ".codesnippet"
        static let templateFilePath = "/Library/Developer/Xcode/Templates/File Templates/Halodoc MVVM"
        static let codeSnippetsFilePath = "/Library/Developer/Xcode/UserData/CodeSnippets"
    }

    struct Messages {
        static let successMessage = "✅  Template was installed succesfully 🎉. Enjoy it 🙂"
        static let successfullReplaceMessage = "✅  The Template has been replaced for you with the new version 🎉. Enjoy it 🙂"
        static let errorMessage = "❌  Ooops! Something went wrong 😡"
        static let exitMessage = "Bye Bye 👋"
        static let promptReplace = "That Template already exists. Do you want to replace it? (y or n)"
    }

    struct Blocks {
        static let printSeparator = { print("====================================") }
    }
}


func printToConsole(_ message:Any){
    Constants.Blocks.printSeparator()
    print("\(message)")
    Constants.Blocks.printSeparator()
}

func moveFile(_ fromPath: String, name: String, to relativePath: String){
    do {
        let fileManager = FileManager.default
        let home = NSHomeDirectory()
        let destinationPath = home + relativePath
        if !fileManager.fileExists(atPath: "\(destinationPath)") {
            try fileManager.createDirectory(atPath: destinationPath, withIntermediateDirectories: true, attributes: nil)
        }
        printToConsole("Template will be copied to: \(destinationPath)")
        if !fileManager.fileExists(atPath: "\(destinationPath)/\(name)") {
            try fileManager.copyItem(atPath: "\(fromPath)/\(name)", toPath: "\(destinationPath)/\(name)")
            printToConsole(Constants.Messages.successMessage)
        } else {
            print(Constants.Messages.promptReplace)
            var input = ""
            repeat {
                guard let textFormCommandLine = readLine(strippingNewline: true) else {
                    continue
                }
                input = textFormCommandLine.uppercased()
            } while(input != Constants.CommandLineValues.yes && input != Constants.CommandLineValues.no)

            if input == Constants.CommandLineValues.yes {
                printToConsole(URL(fileURLWithPath: "\(destinationPath)/\(name)"))
                printToConsole(URL(fileURLWithPath: "\(fromPath)/\(name)"))
                try replaceItemAt(URL(fileURLWithPath: "\(destinationPath)/\(name)"), withItemAt: URL(fileURLWithPath: "\(fromPath)/\(name)"))
                printToConsole(Constants.Messages.successfullReplaceMessage)
            } else {
                printToConsole(Constants.Messages.exitMessage)
            }
        }
    } catch let error as NSError {
        printToConsole("\(Constants.Messages.errorMessage) : \(error.localizedFailureReason!)")
    }
}

func moveTemplates() {
    let fileTemplatesPath = FileManager.default.currentDirectoryPath + "/MVVMTemplates"
    Constants.File.templateNames.forEach {
        moveFile("\(fileTemplatesPath)", name: "\($0)\(Constants.File.xctemplate)", to: Constants.File.templateFilePath)
    }
}

func moveCodeSnippets() {
    let codeSnippetsPath = FileManager.default.currentDirectoryPath + "/CodeSnippets"
    Constants.File.codeSnippets.forEach {
        moveFile("\(codeSnippetsPath)", name: "\($0)\(Constants.File.codesnippet)", to: Constants.File.codeSnippetsFilePath)
    }
}

func replaceItemAt(_ url: URL, withItemAt itemAtUrl: URL) throws {
    let fileManager = FileManager.default
    try fileManager.removeItem(at: url)
    try fileManager.copyItem(atPath: itemAtUrl.path, toPath: url.path)
}

moveTemplates()
moveCodeSnippets()
