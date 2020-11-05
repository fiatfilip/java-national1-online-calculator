function evaluateExpression(){
    const expression = document.getElementById("expression").value;
    const xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            const resp = JSON.parse(this.responseText);
            document.getElementById("expression").value = resp.result
        }
    };
    xhttp.open("POST", "calculate", true);
    let reqBody = {
        expression,
    }

    xhttp.send(JSON.stringify(reqBody));
}

function add(element){
    let value = element.value;
    document.getElementById("expression").value += value
}

function clearComputation(){
    document.getElementById("expression").value = ''
}

function deleteLastChar(){
    let value = document.getElementById("expression").value
    value = value.substring(0, value.length - 1)
    document.getElementById("expression").value = value

}