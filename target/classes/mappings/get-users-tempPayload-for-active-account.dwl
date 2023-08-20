%dw 2.0
output application/json
import dw::core::Periods 
var today = now() as Date{ format: "dd-MM-yyyy"}
var birthDay =  payload.birthday as Date{format: "dd-MM-yyyy"}
var age = Periods::between(today, birthDay)
var gender = if (payload.gender == "M") "Male"
			else if (payload.gender == "F") "Female"
			else ""

var tempPayload = {
	"users": [
		{
	"username": payload.username default "",
	"fullname": payload.fullname default "",
	"age": age.years default "",
	"gender": gender default "",
	"dateRegistered": payload.date_registered default "",
	}
	]
	}

---
tempPayload
