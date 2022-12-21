function add(num1 , num2)
{
    return num1 + num2;
}



function addNumbers() 
{
    // Abfrage der Eingabefelder
    var num1 = parseInt(document.getElementById("num1").value);
    var num2 = parseInt(document.getElementById("num2").value);
    
    // Aufruf der Additionsfunktion
    var result = add(num1, num2);
    
    // Anzeige des Ergebnisses
    document.getElementById("result").innerHTML = result;
}
  