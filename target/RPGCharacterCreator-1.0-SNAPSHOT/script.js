// document.addEventListener("DOMContentLoaded", function() {
//     const elements = document.getElementsByClassName()


//  pobierz wartosc wybranej rasy z selecta na podstawie
//  tej wartosci znajdź rasę z listy races i wypełnij wartosci inputów na podstawie tej rasy



// })

function reqListener() {
    console.log(this.responseText);
}

const req = new XMLHttpRequest();
req.addEventListener("load", reqListener);
req.open("GET", "http://www.example.org/example.txt");
req.send();

var myvar = "${races}";

console.log(myvar);

