function validateForm() {
    var username = document.getElementById('User').value;
    var password = document.getElementById('Pass').value;


    var UserInp = "Victor";
    var PassInp = "project";

    if ((username == UserInp) && (password == PassInp)) {

        window.location.href = ('http://google.com');

    } else {

        alert("You are a scam");

    }

}
