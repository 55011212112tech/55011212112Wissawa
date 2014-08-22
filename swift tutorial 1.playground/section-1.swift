let tutorialTeam = 56
let editorailTeam = 23
var  totalteam = tutorialTeam + editorailTeam

totalteam += 1
let priceIntInferred = -19
let priceIntExplicit:Int = -19

let priceInferred = -19.99
let priceExplicit :Double = -19.99

let priceFloatInferred = -19.99
let priceFloatExplicit:Float = -19.99

let onsaleInferred = true
let onsaleExplicit :Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit :String = "Whoopie Cushion"

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]
//var shoppingListExplicit:[String] = ["Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolate Spread","Cheese","Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
//shoppingList
shoppingList[0...3] = ["Bananas","Apples"]
shoppingList

if (onsaleInferred)
{
    println("\(nameInferred) on sale for \(priceInferred)!")
}
else
{
     println("\(nameInferred) at regular \(priceInferred)!")
}

// Add Value to Array

shoppingList+=["Baking Powerder"]
//shoppingList now contains 4 items
shoppingList+=["Chocolate Spread","Cheese","Butter"]
//shoppingList now contains 7 items

shoppingList.insert("Mapple Syrup", atIndex:0)
//shoppingList now contains 7 items
//"Maple Syrub" is now the first item in the list

shoppingList.append("Flour")
//shoppingList now contains 3 items,and someone is making pancakes
shoppingList+=["Baking Powder"]
var FirstItem = shoppingList[0]
//firstItem is equal to "Eggs"

shoppingList[4...6]=["Bananas","Apples"]
//shoppingList now contains 6 items

//Remove Value from Array

let apples = shoppingList.removeLast()
//the last item in the array has just been removed
//shoppingList now contains 5 items, and on apples
//the apples constant is now equal to the removed "Apples" String

let MapleSyrup = shoppingList.removeAtIndex(0)
//the item that was at index 0 has just been removed
//shoppingList now contains 6 items,and no "maple syrup" string

// Dictionary

let array:Array<Int> = [1,2,3,4]
let dictionary :Dictionary<String,Int> = ["dog":1,"elephant":2]

