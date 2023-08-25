%dw 2.0
output application/java
import dw::core::Periods 
var today = now() as Date{ format: "dd-MM-yyyy"}
var birthDay =  payload.birthday[0] as Date{format: "dd-MM-yyyy"}
var age = Periods::between(today, birthDay)
var gender = if (payload.gender[0] == "M") "Male"
			else if (payload.gender[0] == "F") "Female"
			else ""

var tempPayload = {
	"username": payload.username[0] default "",
	"fullname": payload.fullname[0] default "",
	"age": age.years default "",
	"gender": gender default "",
	"dateRegistered": payload.date_registered[0] default "",
	}

---
(vars."output" default{}) ++ (tempPayload default{})