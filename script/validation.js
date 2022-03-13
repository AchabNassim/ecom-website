// inputs
const fName = document.querySelector("#firstName");
const lName = document.querySelector("#lastName");
const adresse = document.querySelector("#adresse");
const number = document.querySelector("#phone");
const email = document.querySelector("#email");
const password = document.querySelector("#password");
const passwordConf = document.querySelector("#passwordConf");

// regex 
const letters = /^[A-Za-z ]+$/;
const phone = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im
const mail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/

// paragraphs to display the error messages
const fNameV = document.querySelector("#firstNameV");
const lNameV = document.querySelector("#lastNameV");
const adresseV = document.querySelector("#adresseV");
const numberV = document.querySelector("#numberV");
const emailV = document.querySelector("#emailV");
const passwordV = document.querySelector("#passwordV");
const passwordConfV = document.querySelector("#passwordConfV");

function validateForm (e){
	let valid = 0;
	if(letters.test(fName.value) == false ){
		fNameV.textContent = "Please enter a valid name"
		valid = 1
	} else {
		fNameV.textContent = ""
		valid = 0
	}

	if(letters.test(lName.value) == false ){
		lNameV.textContent = "Please enter a valid name"
		valid = 1
	} else {
		lNameV.textContent = ""
		valid = 0
	}

	if(adresse.value == "" ){
		adresseV.textContent = "Please enter a valid adress"
		valid = 1
	} else {
		adresseV.textContent = ""
		valid = 0
	}
	if (phone.test(number.value) == false){
		numberV.textContent = "Please enter a valid phone number";
		valid = 1
	} else {
		numberV.textContent = "";
		valid = 0
	}

	if(mail.test(email.value) == false){
		emailV.textContent = "Please enter a valid Email"
		valid = 1
	} else {
		emailV.textContent = ""
		valid = 0
	}
	if (password.value !==  passwordConf.value ){
		passwordConfV.textContent = "Please enter a matching password" 
		valid = 1
	} else {	
		passwordConfV.textContent = ""
		valid = 0
	}
	if(fName.value == "" || lName.value == "" || adresse.value == ""|| number.value == "" || email.value == "" || password.value == ""){
		e.preventDefault();
	} 
	if(valid > 0){
		e.preventDefault();
	}
}

document.querySelector('#submitBtn').addEventListener("click",validateForm);