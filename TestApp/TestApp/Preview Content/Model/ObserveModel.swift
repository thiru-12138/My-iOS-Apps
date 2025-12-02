//
//  ObserveModel.swift
//  TestApp
//
//  Created by Thirumalai Ganesh G on 28/10/25.
//

import Foundation
import Observation
import SwiftUI

@Observable
class MySettings {
    var name: String = "Test"
    var email: String = "test@mail.com"
}


//Modifier

struct HiddenNavigationBar: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
    }
}

extension View {
    func hiddenNavBarStyle() -> some View {
        modifier(HiddenNavigationBar())
    }
}


//TextField Modifier

struct NewTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.gray)
            .foregroundStyle(.white)
            .font(.system(size: 18.0))
            .frame(height: 50)
    }
}

extension View {
    func newTextFieldStyle() -> some View {
        modifier(NewTextFieldModifier())
    }
}
