%dw 2.0
output application/json
---
payload 
//The above DW code takes an array of objects with a Num property, adds the index of each object to its Num property, and formats the result as a JSON object with a Num property that is a string with four digits before the decimal point and one digit after the decimal point.
map (item, index) ->
//The script uses the map function to iterate over each object in the array and transform it into a new object with a Num property that has been modified.
 { Num: ((item.Num as Number) + index)
//The map function takes two arguments: the first argument is the current item in the array, and the second argument is the index of the current item in the array. For each item in the array, the script adds the index to the Num property of the item, converts the result to a string, and formats it as a string with four digits before the decimal point and one digit after the decimal point.
 as String {format : "0000.#" } }
//The resulting output is a JSON object that contains an array of objects with a Num property that has been modified according to the rules described above.
























// sample output:
// [
// {
// "Num": "0000"
// },
// {
// "Num": "0001"
// },
// {
// "Num": "0002"
// },
// {
// "Num": "0003"
// },
// {
// "Num": "0004"
// },
// {
// "Num": "0005"
// },
// {
// "Num": "0006"
// },
// {
// "Num": "0007"
// },
// {
// "Num": "0008"
// },
// {
// "Num": "0009"
// },
// {
// "Num": "0010"
// },
// {
// "Num": "0011"
// },
// {
// "Num": "0012"
// },
// {
// "Num": "0013"
// },
// {
// "Num": "0014"
// },
// {
// "Num": "0015"
// },
// {
// "Num": "0016"
// },
// {
// "Num": "0017"
// }
// ]