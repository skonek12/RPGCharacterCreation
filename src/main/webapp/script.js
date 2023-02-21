document.addEventListener("DOMContentLoaded", function() {

    // function reqListener() {
    //     console.log(this.responseText);
    // }
    //
    // const req = new XMLHttpRequest();
    // req.addEventListener("load", reqListener);
    // req.open("GET", "http://www.example.org/example.txt");
    // req.send();
console.log("klocek")

    console.log("klocek")
    // var myvar = "${racesJson}";
    // var object1 = JSON.parse(myvar[1]);
// console.log(object1);
console.log(racesJsonFile);
console.log(racesJsonFile[1].charRaceId);
console.log(racesJsonFile[1].raceName);
    console.log(classesJsonFile);
    console.log(classesJsonFile[1].charClassId);
    console.log(classesJsonFile[1].className);
 // pobierz wartosc wybranej rasy z selecta na podstawie
 // tej wartosci znajdź rasę z listy races i wypełnij wartosci inputów na podstawie tej rasy

// modyfikacja skilli


    const acrobaticsBaseValue = document.getElementById("acrobaticsBaseValue");
    const acrobaticsRaceBonus = document.getElementById("acrobaticsRaceBonus");
    const acrobaticsClassBonus = document.getElementById("acrobaticsClassBonus");
    const acrobaticsPerkBonus = document.getElementById("acrobaticsPerkBonus");
    const acrobaticsInputValue = document.getElementById("acrobatics");

    acrobaticsRaceBonus.setAttribute("value",racesJsonFile[2].acrobatics)
    acrobaticsClassBonus.setAttribute("value",classesJsonFile[2].acrobatics)

    const acrobaticsSum = parseInt(acrobaticsBaseValue.value)
        +parseInt(acrobaticsRaceBonus.value)
        +parseInt(acrobaticsClassBonus.value)
        +parseInt(acrobaticsPerkBonus.value);
    acrobaticsInputValue.setAttribute("value",acrobaticsSum);

    console.log(acrobaticsScript.value)


    function setSkillValuesFromJson(racesJsonFile) {
        acrobaticsRaceBonus.setAttribute("value",racesJsonFile[1].acrobatics)
    }

})



