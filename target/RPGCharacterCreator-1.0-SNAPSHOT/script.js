document.addEventListener("DOMContentLoaded", function() {

    function reqListener() {
        console.log(this.responseText);
    }

    const req = new XMLHttpRequest();
    req.addEventListener("load", reqListener);
    req.open("GET", "http://www.example.org/example.txt");
    req.send();
console.log("dupa")

    console.log("dipa")
    // var myvar = "${racesJson}";
    // var object1 = JSON.parse(myvar[1]);
    console.log(myvar);

console.log(myvar[1].charRaceId);
 // pobierz wartosc wybranej rasy z selecta na podstawie
 // tej wartosci znajdź rasę z listy races i wypełnij wartosci inputów na podstawie tej rasy



})



