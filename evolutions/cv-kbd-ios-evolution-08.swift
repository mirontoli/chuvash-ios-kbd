//
//  ChuvashKeyboard.swift
//
//  Adjusted for Chuvash by Anatoly Mironov @mirontoli
//  Initial file DefaultKeyboard created by Alexei Baboulevitch archagon on 2014-07-10
//

func defaultKeyboard() -> Keyboard {
    let defaultKeyboard = Keyboard()
    
    for key in ["Ӳ", "Й", "У", "К", "Е", "Н", "Ӗ", "Х", "Ш"] {
        let keyModel = Key(.Character)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 0, page: 0)
    }

    for key in ["Ы", "В", "Ӑ",  "Л", "А", "Р", "О", "П", "Ҫ"] {
        let keyModel = Key(.Character)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 1, page: 0)
    }
    
    let keyModel = Key(.Shift)
    defaultKeyboard.addKey(keyModel, row: 2, page: 0)
    
    for key in ["Ч", "С", "М", "-", "И", "Т", "Ь"] {
        let keyModel = Key(.Character)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 2, page: 0)
    }
    
    let backspace = Key(.Backspace)
    defaultKeyboard.addKey(backspace, row: 2, page: 0)
    
    let keyModeChangeNumbers = Key(.ModeChange)
    keyModeChangeNumbers.uppercaseKeyCap = "12ц"
    keyModeChangeNumbers.toMode = 1
    defaultKeyboard.addKey(keyModeChangeNumbers, row: 3, page: 0)
    
    let keyboardChange = Key(.KeyboardChange)
    defaultKeyboard.addKey(keyboardChange, row: 3, page: 0)
    
    let settings = Key(.Settings)
    defaultKeyboard.addKey(settings, row: 3, page: 0)
    
    let space = Key(.Space)
    space.uppercaseKeyCap = "пушӑлӑх"
    space.uppercaseOutput = " "
    space.lowercaseOutput = " "
    defaultKeyboard.addKey(space, row: 3, page: 0)
    
    let returnKey = Key(.Return)
    returnKey.uppercaseKeyCap = "кӗрт"
    returnKey.uppercaseOutput = "\n"
    returnKey.lowercaseOutput = "\n"
    defaultKeyboard.addKey(returnKey, row: 3, page: 0)
    
    for key in ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 0, page: 1)
    }
    //Ц Щ Ж Б
    for key in ["—", ":", ";", "(", ")", "Я", "Ю", "Д", "Б", "Э"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 1, page: 1)
    }
    
    let keyModeChangeSpecialCharacters = Key(.ModeChange)
    keyModeChangeSpecialCharacters.uppercaseKeyCap = "+=ё"
    keyModeChangeSpecialCharacters.toMode = 2
    defaultKeyboard.addKey(keyModeChangeSpecialCharacters, row: 2, page: 1)
    
    // Ъ
    for key in [".", ",", "?", "!", "\""] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 2, page: 1)
    }
    
    defaultKeyboard.addKey(Key(backspace), row: 2, page: 1)
    
    let keyModeChangeLetters = Key(.ModeChange)
    keyModeChangeLetters.uppercaseKeyCap = "ӐҪӖ"
    keyModeChangeLetters.toMode = 0
    defaultKeyboard.addKey(keyModeChangeLetters, row: 3, page: 1)
    
    defaultKeyboard.addKey(Key(keyboardChange), row: 3, page: 1)
    
    defaultKeyboard.addKey(Key(settings), row: 3, page: 1)
    
    defaultKeyboard.addKey(Key(space), row: 3, page: 1)
    
    defaultKeyboard.addKey(Key(returnKey), row: 3, page: 1)
    
    for key in ["Ц", "Щ", "Ж", "Ё", "Г", "З", "Ъ", "Љ", "Ђ", "Њ"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 0, page: 2)
    }
    
    for key in ["§", "*", "|", "%", "<", ">", "$", "₽", "&", "@"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 1, page: 2)
    }
    
    defaultKeyboard.addKey(Key(keyModeChangeNumbers), row: 2, page: 2)
    
    
    for key in ["/", "…", "+", "=", "_"] {
        let keyModel = Key(.SpecialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 2, page: 2)
    }
    
    defaultKeyboard.addKey(Key(backspace), row: 2, page: 2)
    
    defaultKeyboard.addKey(Key(keyModeChangeLetters), row: 3, page: 2)
    
    defaultKeyboard.addKey(Key(keyboardChange), row: 3, page: 2)
    
    defaultKeyboard.addKey(Key(settings), row: 3, page: 2)
    
    defaultKeyboard.addKey(Key(space), row: 3, page: 2)
    
    defaultKeyboard.addKey(Key(returnKey), row: 3, page: 2)
    
    return defaultKeyboard
}