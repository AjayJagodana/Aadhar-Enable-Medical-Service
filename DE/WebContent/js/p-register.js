function validate()
{

	var userName = document.getElementById('uname').value;
	var email = document.getElementById('email').value;
	var aadhar = document.getElementById('aadhar').value;
	var pass = document.getElementById('pass').value;
	var reg = /^([A-Za-z0-9_\-\.]){1,}@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]{2,4})$/;

	if (userName == "") {
		document.getElementById('sname').innerHTML ="**Please fill the name**";
		return false;
	}else if(email == ""){
		document.getElementById('smail').innerHTML ="**Please fill the Email**";
		return false;
	}else if(aadhar == ""){
		document.getElementById('saadhar').innerHTML ="**Please fill the Aadhar Number**";
		return false;
	}else if(pass == ""){
		document.getElementById('spass').innerHTML ="**Please fill the Password**";
		return false;
	}
	if (!(isNaN(userName))) {
		document.getElementById('sname').innerHTML ="**Numbers not allowed**";
		return false;
	}
	if(isNaN(aadhar)){
		document.getElementById('saadhar').innerHTML ="**Enter a valid Aadharcard number**";
		return false;
	}


	if (!isNaN(userName)) {
		document.getElementById('sname').innerHTML ="**Numbers are not allowed**";
		return false;
	}
	if(reg.test(email) == false){
		document.getElementById('smail').innerHTML ="**Enter a valid Email**";
		return false;
	}
	if (aadhar.length != 12) 
	{
		document.getElementById('saadhar').innerHTML ="**Enter a valid Aadharcard number**";
		return false;
	}
	if (pass.length < 8 || pass.length > 12) 
	{
		document.getElementById('spass').innerHTML ="**Password must be between 8-12 character**";
		return false;
	}

}