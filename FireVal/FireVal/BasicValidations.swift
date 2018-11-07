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
		let Test = NSPredicate(format:"SELF MATCHES %@", RegEx)
		return Test.evaluate(with: username)
	}
	
	public static func isValidPassword(password: String) {
		
	}
}
