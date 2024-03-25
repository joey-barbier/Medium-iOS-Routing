//
//  @Selectable.swift
//  AppTestCoordinator
//
//  Created by Orka on 07/01/2024.
//

import SwiftUI
import Combine

// MARK: - App

@propertyWrapper
struct Selectables<T: Sequence> {
    private(set) var wrappedValue: T
    private var selected: PassthroughSubject<T.Element, Never>
    private var cancellables: Set<AnyCancellable>

    var projectedValue: Selectables<T> {
        return self
    }
    
    var itemsSelectable: [Selectable<T.Element>] {
        wrappedValue.map { item in
            Selectable(item,
                       selected: selected,
                       cancellables: cancellables)
        }
    }
    
    // MARK: - Not Selectable
    static func notSelectable(_ wrappedValue: T) -> Self {
        Selectables(wrappedValue)
    }
    
    // MARK: - Init
    public init(_ wrappedValue: T,
         selected: PassthroughSubject<T.Element, Never> = PassthroughSubject<T.Element, Never>(),
         cancellables: Set<AnyCancellable> = Set<AnyCancellable>())
    {
        self.wrappedValue = wrappedValue
        self.selected = selected
        self.cancellables = cancellables
    }
    
    // MARK: - Set event click
    mutating func onTap(_ completion: @escaping ((T.Element) -> Void)) {
        selected.sink { item in
            completion(item)
        }
        .store(in: &cancellables)
    }
    
    func send(_ value: T.Element) {
        selected.send(value)
    }
}

@propertyWrapper
struct Selectable<T> {
    private(set) var wrappedValue: T
    private var selected: PassthroughSubject<T, Never>
    private var cancellables: Set<AnyCancellable>
    
    var projectedValue: Selectable<T> {
        return self
    }
    
    // MARK: - Not Selectable
    static func notSelectable(_ wrappedValue: T) -> Self {
        Selectable(wrappedValue)
    }
    
    // MARK: - Init
    init(_ wrappedValue: T,
         selected: PassthroughSubject<T, Never> = PassthroughSubject<T, Never>(),
         cancellables: Set<AnyCancellable> = Set<AnyCancellable>())
    {
        self.wrappedValue = wrappedValue
        self.selected = selected
        self.cancellables = cancellables
    }

    // MARK: - Set event click
    mutating func onTap(_ completion: @escaping ((T) -> Void)) {
        selected.sink { item in
            completion(item)
        }
        .store(in: &cancellables)
    }
    
    func send(_ value: T) {
        selected.send(value)
    }
}
