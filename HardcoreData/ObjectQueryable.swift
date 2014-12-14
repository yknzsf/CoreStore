//
//  ObjectQueryable.swift
//  HardcoreData
//
//  Copyright (c) 2014 John Rommel Estropia
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import UIKit


public typealias FetchRequestCustomization = (fetchRequest: NSFetchRequest) -> ()

public protocol ObjectQueryable {
    
    func findFirst<T: NSManagedObject>(entity: T.Type) -> T?
    func findFirst<T: NSManagedObject>(entity: T.Type, customizeFetch: FetchRequestCustomization?) -> T?
    
    func findFirst<T: NSManagedObject>(query: ObjectQuery<T>) -> T?
    func findFirst<T: NSManagedObject>(query: ObjectQuery<T>, customizeFetch: FetchRequestCustomization?) -> T?
    
    func findAll<T: NSManagedObject>(entity: T.Type) -> [T]?
    func findAll<T: NSManagedObject>(entity: T.Type, customizeFetch: FetchRequestCustomization?) -> [T]?
    
    func findAll<T: NSManagedObject>(query: ObjectQuery<T>) -> [T]?
    func findAll<T: NSManagedObject>(query: ObjectQuery<T>, customizeFetch: FetchRequestCustomization?) -> [T]?
    
    func count<T: NSManagedObject>(entity: T.Type) -> Int
    func count<T: NSManagedObject>(query: ObjectQuery<T>) -> Int
}
