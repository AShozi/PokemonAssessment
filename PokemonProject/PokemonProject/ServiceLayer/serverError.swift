//
//  serverError.swift
//  PokemonProject
//
//  Created by Aphiwe Shozi on 2024/07/23.
//

import Foundation

enum APIError:String ,Error{
    case internalError
    case invalidURL
    case parsingError
    case serverError
}

enum Method {
    case GET
    case POST
}
