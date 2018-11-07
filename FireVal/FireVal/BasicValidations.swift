//
//  BasicValidations.swift
//  FireVal
//
//  Created by Dilip kumar on 07/11/2018.
//  Copyright © 2018 Dilip kumar. All rights reserved.
//

import Foundation

public class BasicValidations {
	
	public static func isValidUsername(username: String,minCharacters: Int, maxCharacters: Int) -> Bool {
		let RegEx = "\\w{\(minCharacters),\(maxCharacters)}"
		let test = NSPredicate(format:"SELF MATCHES %@", RegEx)
		return test.evaluate(with: username)
	}
	
	public static func isValidPassword(password: String) -> Bool {
		let PwdRegEx = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
		let test = NSPredicate(format:"SELF MATCHES %@", PwdRegEx)
		return test.evaluate(with: password)
	}
	
	public static func isValidEmail(email:String) -> Bool {
		let emailRegEx = "^(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?(?:(?:(?:[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+(?:\\.[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+)*)|(?:\"(?:(?:(?:(?: )*(?:(?:[!#-Z^-~]|\\[|\\])|(?:\\\\(?:\\t|[ -~]))))+(?: )*)|(?: )+)\"))(?:@)(?:(?:(?:[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)(?:\\.[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)*)|(?:\\[(?:(?:(?:(?:(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))\\.){3}(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))))|(?:(?:(?: )*[!-Z^-~])*(?: )*)|(?:[Vv][0-9A-Fa-f]+\\.[-A-Za-z0-9._~!$&'()*+,;=:]+))\\])))(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?$"
		let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
		let result = emailTest.evaluate(with: email)
		return result
	}
	
	public static func isValidPhone(phoneNumber: String) -> Bool {
		let PHONE_REGEX = "^((\\+)|(00))[0-9]{6,14}$"
		let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
		let result =  phoneTest.evaluate(with: phoneNumber)
		return result
	}
	
	public static func isValidPincode(pincode: String) -> Bool {
		if pincode.count == 6 && pincode.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil {
			return true
		}
		else{
			return false
		}
	}
	
	public static func isPasswordSame(password: String , confirmPassword : String) -> Bool {
		if password == confirmPassword{
			return true
		}else{
			return false
		}
	}
}
