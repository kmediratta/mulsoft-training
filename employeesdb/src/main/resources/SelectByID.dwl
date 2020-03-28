%dw 2.0
output application/json
---
{
	employees: payload map ( payload01 , indexOfPayload01 ) -> {
		EmpId: payload01.EmpId,
		Name: payload01.Name,
		designation: payload01.designation,
		Email: payload01.Email
	}
}