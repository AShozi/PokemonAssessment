//
//  serverError.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

enum APIError:String ,Error{
    case internalServerError
    case invalidURL
    case parsingError
    
}

enum Method {
    case GET
    case POST
}
