function validate() {
	var aadhar = document.getElementById('aadhar').value;
	var pass = document.getElementById('pass').value;
	
	if(aadhar == ""){
		document.getElementById('saadhar').innerHTML ="**Please fill the Aadhar Number**";
		return false;
	}else if(pass == ""){
		document.getElementById('spass').innerHTML ="**Please fill the Password**";
		return false;
	}
	if(isNaN(aadhar)){
		document.getElementById('saadhar').innerHTML ="**Enter a valid Aadharcard number**";
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