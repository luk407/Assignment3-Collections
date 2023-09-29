// 1. შექმენით array, შემდეგ პირველ და ბოლო ელემენტს გაუცვალეთ ადგილი, გამზადებული ან უკვე არსებული ფუნქციის გარეშე.  (array-ის ტიპს არაქვს მნიშვნელობა)
var array1 = [1, 2, 3, 4, 5, 6, 7, 8]
let firstElement = array1[0]

array1[0] = array1[array1.count - 1]
array1[array1.count - 1] = firstElement

print(array1)
print("")

// 2. შექმენით array, მასში წაშალეთ ნახევარი ელემენტები, თუ კენტი რაოდენობის იქნა დატოვეთ ნაკლები და წაშალეთ მეტი.  მაგ.: თუ იყო 11 ელემენტი 5 დატოვეთ და 6 წაშალეთ. და დაბეჭდეთ მიღებული შედეგი. (array-ის ტიპს არაქვს მნიშვნელობა).
var array2 = [11, 3, 7, 9, 124, 789, 4, 7657]

if array2.count % 2 == 0 {
    array2.removeLast(array2.count / 2)
} else {
    array2.removeLast(array2.count / 2 + 1)
}
print("Remaining elements are: \(array2)")
print("")

// 3. შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.
let array3 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var arrayEven: [Int] = []
var arrayOdd: [Int] = []

for i in 0..<array3.count {
    if array3[i] % 2 == 0 {
        arrayEven.append(array3[i])
    } else {
        arrayOdd.append(array3[i])
    }
}
print("Even numbers are: \(arrayEven), Odd numbers are: \(arrayOdd) ")
print("")

// 4. შექმენით Double-ების array, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ array-ში.
let array4 = [3.14, 678.567, 23432.56, 45.1, 67, 6868]
var largestNumber = array4[0]

for i in 0..<array4.count {
    if array4[i] > largestNumber {
        largestNumber = array4[i]
    }
}
print("Largest number in this array is: \(largestNumber)")
print("")

// 5. შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.
let firstArray = [8, 4, 9, 9, 0, 2]
let secondArray = [1, 0, 9, 2, 3, 7, 0, 1]

var combinedArray = firstArray + secondArray
var tempNumber = 0

for i in 0..<combinedArray.count {
    for j in i + 1..<combinedArray.count {
        if combinedArray[i] > combinedArray[j] {
            tempNumber = combinedArray[i]
            combinedArray[i] = combinedArray[j]
            combinedArray[j] = tempNumber
        }
    }
}
print("The sorted array is: \(combinedArray)")
print("")

// 6. შექმენით String ტიპის ცვლადი და შეამოწმეთ არის თუ არა ყველა ჩარაქტერი ამ სტრინგში უნიკალური. გამოიყენეთ Set-ი ამ თასკის შესასრულებლად.
let word1 = "hippopotamus"
var charactersOfWord1: Set<Character> = []

for j in word1 {
    charactersOfWord1.insert(j)
}
if word1.count > charactersOfWord1.count {
    print("Some characters in the word '\(word1)' are not unique")
} else {
    print("All characters in the word '\(word1)' is unique")
}
print("")

// 7. შექმენით ორი Int-ების Set. გამოიყენეთ მათზე Set-ის მეთოდები როგორიცაა: union, intersection და difference. დაბეჭდეთ შედეგები.

let set1: Set<Int> = [23, 15, 65, 78, 90, 2, 62, 12]
let set2: Set<Int> = [98, 11, 12, 90, 15, 5]

let unionSet = set1.union(set2)
let intersectionSet = set1.intersection(set2)
let differenceSet = set1.symmetricDifference(set2)

print("The union set is: \(unionSet)",
      "\nThe intersection set is: \(intersectionSet)",
      "\nThe difference set is: \(differenceSet)")
print("")

// 8. შექმენით ორი String-ის Set. შეამოწმეთ არის თუ არა პირველი String-ის Set, მეორეს sub-Set-ი. დაბეჭდეთ შედეგი.
let stringSet1: Set<String> = ["Apple", "Banana", "Peach"]
let stringSet2: Set<String> = ["Cherry", "Strawberry", "Peach", "Banana", "Pineapple"]

if stringSet1.isSubset(of: stringSet2) {
    print("stringSet1 is sub-set of stringSet2")
} else {
    print("stringSet1 is not sub-set of stringSet2")
}
print("")

// 9. შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)
let randomArray = [1, 43, 56, 87, 34, 76, 789, 23423, 87]
var generatedSet: Set<Int> = []

for i in randomArray {
    generatedSet.insert(i)
}

if generatedSet.count < randomArray.count {
    print("array შეიცავს მსგავს ელემენტებს")
} else {
    print("array-ში ყველა ელემენტი განსხვავებულია")
}
print("")

// 10. შექმენით Dictionary, სადაც იქნება ფილმის სახელები და მათი რეიტინგები, რეიტინგი (0-10). დაამატეთ მინიმუმ 5 ფილმი, ამის შემდეგ გამოთვალეთ ამ Dictionary-ში არსებული ფილმების საშვალო რეიტინგი. დაბეჭდეთ მიღებული შედეგი.
let movieRatings = [
    "Star Wars: Episode III - Revenge Of The Sith": 7.6,
    "The Lord of the Rings: The Fellowship of the Ring": 8.8,
    "Interstellar": 8.7,
    "Pirates of Caribbean: At World's End": 7.1,
    "Avengers: Endgame": 8.4,
    "Oppenheimer": 8.6,
    "Now You See Me": 7.2
]
var averageRating: Double = 0.0

for i in movieRatings {
    averageRating += i.value
}
averageRating /= Double(movieRatings.count)

print("The average rating of the movies is \(averageRating)")
print("")
