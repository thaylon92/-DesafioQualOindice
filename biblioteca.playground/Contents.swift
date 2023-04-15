
struct books {
    
    var name: String
    var pageNumber: Int
    var theme: String
}

var books1 = books(name: "Só Sei que foi assim", pageNumber: 210, theme: "Drama")
var books2 = books(name: "O que é isso?", pageNumber: 85, theme: "Tecnico")
var books3 = books(name: "Mamãe", pageNumber: 42, theme: "infantil")
var books4 = books(name: "Como resolvo esse bug", pageNumber: 110, theme: "Tecnico")
var books5 = books(name: "Livro legal", pageNumber: 35, theme: "infantil")
var books6 = books(name: "Xcode-  e agora?", pageNumber: 200, theme: "Drama")
var books7 = books(name: "Meu mouse - O terror", pageNumber: 107, theme: "Drama")


func menorQuantidadePaginas() -> String {
    let list = [books1.pageNumber, books2.pageNumber, books3.pageNumber, books4.pageNumber, books5.pageNumber, books6.pageNumber, books7.pageNumber]
    let minValue = list.min()
    
    if minValue == books1.pageNumber {
        return books1.name
    }
    else if minValue == books2.pageNumber{
        return books2.name
    }
    else if minValue == books3.pageNumber{
        return books3.name
    }
    else if minValue == books4.pageNumber {
        return books4.name
    }
    else if minValue == books5.pageNumber {
        return books5.name
    }
    else if minValue == books6.pageNumber {
        return books6.name
    }
    else if minValue == books7.pageNumber {
        return books7.name
    }
    return ""
}

func maiorrQuantidadePaginas() -> String {
    let list = [books1.pageNumber, books2.pageNumber, books3.pageNumber, books4.pageNumber, books5.pageNumber, books6.pageNumber, books7.pageNumber]
    let maxValue = list.max()
    
    
    if maxValue == books1.pageNumber {
        return books1.name
    }
    else if maxValue == books2.pageNumber{
        return books2.name
    }
    else if maxValue == books3.pageNumber{
        return books3.name
    }
    else if maxValue == books4.pageNumber {
        return books4.name
    }
    else if maxValue == books5.pageNumber {
        return books5.name
    }
    else if maxValue == books6.pageNumber {
        return books6.name
    }
    else if maxValue == books7.pageNumber {
        return books7.name
    }
    return ""
}
func temaTecnicoMaiorQuantidade() -> String {
    
    let listTheme = [books1, books2, books3, books4, books5, books6, books7]
    var pageForTheme:[Int] = []
    
    for books in listTheme {
        if books.theme == "Tecnico" {
            pageForTheme.append(books.pageNumber)
        }
    }
    let maxValue = pageForTheme.max()
    
    if maxValue == books1.pageNumber {
        return books1.name
    }
    else if maxValue == books2.pageNumber{
        return books2.name
    }
    else if maxValue == books3.pageNumber{
        return books3.name
    }
    else if maxValue == books4.pageNumber {
        return books4.name
    }
    else if maxValue == books5.pageNumber {
        return books5.name
    }
    else if maxValue == books6.pageNumber {
        return books6.name
    }
    else if maxValue == books7.pageNumber {
        return books7.name
    }
    return ""
}

func temaDramaMaiorQuantidade() -> String {
    
    let listTheme = [books1, books2, books3, books4, books5, books6, books7]
    var pageForTheme:[Int] = []
    
    for books in listTheme {
        if books.theme == "Drama" {
            pageForTheme.append(books.pageNumber)
        }
    }
    let maxValue = pageForTheme.max()
    
    if maxValue == books1.pageNumber {
        return books1.name
    }
    else if maxValue == books2.pageNumber{
        return books2.name
    }
    else if maxValue == books3.pageNumber{
        return books3.name
    }
    else if maxValue == books4.pageNumber {
        return books4.name
    }
    else if maxValue == books5.pageNumber {
        return books5.name
    }
    else if maxValue == books6.pageNumber {
        return books6.name
    }
    else if maxValue == books7.pageNumber {
        return books7.name
    }
    return ""
}

func temaInfantilMaiorQuantidade() -> String {
    
    let listTheme = [books1, books2, books3, books4, books5, books6, books7]
    var pageForTheme:[Int] = []
    
    for books in listTheme {
        if books.theme == "infantil" {
            pageForTheme.append(books.pageNumber)
        }
    }
    let maxValue = pageForTheme.max()
    
    if maxValue == books1.pageNumber {
        return books1.name
    }
    else if maxValue == books2.pageNumber{
        return books2.name
    }
    else if maxValue == books3.pageNumber{
        return books3.name
    }
    else if maxValue == books4.pageNumber {
        return books4.name
    }
    else if maxValue == books5.pageNumber {
        return books5.name
    }
    else if maxValue == books6.pageNumber {
        return books6.name
    }
    else if maxValue == books7.pageNumber {
        return books7.name
    }
    return ""
}
func temaComMenorNumeroDePaginas() -> String {
    
    let listBooks = [books1, books2, books3, books4, books5, books6, books7]
    var themeDrama: [Int] = []
    var themeTecnico: [Int] = []
    var themeInfantil: [Int] = []
    
    for theme in listBooks {
        if theme.theme == "Drama" {
            themeDrama.append(theme.pageNumber)
        }
        else if theme.theme == "Tecnico" {
            themeTecnico.append(theme.pageNumber)
            
        } else {
            themeInfantil.append(theme.pageNumber)
        }
        let sumPageDrama = themeDrama.reduce(0, +)
        let sumPageThecnico = themeTecnico.reduce(0, +)
        let sumPageInfantil = themeInfantil.reduce(0, +)
        if sumPageDrama < sumPageThecnico && sumPageDrama < sumPageInfantil {
            return "Drama"
        }
        else if sumPageInfantil < sumPageDrama && sumPageInfantil < sumPageThecnico {
            return "Infantil"
        }
        else if sumPageThecnico < sumPageInfantil && sumPageThecnico < sumPageDrama {
            return "Tecnico"
        }
    }
    return ""
}

func temaComMaiorNumeroDePaginas() -> String {
    
    let listBooks = [books1, books2, books3, books4, books5, books6, books7]
    var themeDrama: [Int] = []
    var themeTecnico: [Int] = []
    var themeInfantil: [Int] = []
    
    for theme in listBooks {
        if theme.theme == "Drama" {
            themeDrama.append(theme.pageNumber)
        }
        else if theme.theme == "Tecnico" {
            themeTecnico.append(theme.pageNumber)
        } else {
            themeInfantil.append(theme.pageNumber)
        }
        let sumPageDrama = themeDrama.reduce(0, +)
        let sumPageThecnico = themeTecnico.reduce(0, +)
        let sumPageInfantil = themeInfantil.reduce(0, +)
        
        if sumPageDrama > sumPageThecnico && sumPageDrama > sumPageInfantil {
            return "Drama"
        }
        else if sumPageInfantil > sumPageDrama && sumPageInfantil > sumPageThecnico {
            return "Infantil"
        }
        else if sumPageThecnico > sumPageInfantil && sumPageThecnico > sumPageDrama {
            return "Tecnico"
        }
    }
    return ""
}

func NovaListagem() {
    var listBooks = [books1, books2, books3, books4, books5, books6, books7]
    listBooks.sort { $0.pageNumber < $1.pageNumber}
    print(listBooks)
}

func NovaListagemOrdemAlfabetica() {
    var listBooks = [books1, books2, books3, books4, books5, books6, books7]
    listBooks.sort { $0.name < $1.name }
    print(listBooks)
}
    
print(menorQuantidadePaginas())
print(maiorrQuantidadePaginas())
print(temaTecnicoMaiorQuantidade())
print(temaDramaMaiorQuantidade())
print(temaInfantilMaiorQuantidade())
print(temaComMenorNumeroDePaginas())
print(temaComMaiorNumeroDePaginas())
print(NovaListagem())
print(NovaListagemOrdemAlfabetica())

