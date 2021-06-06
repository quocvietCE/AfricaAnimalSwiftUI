//
//  CenterModifier.swift
//  AfricaApp
//
//  Created by Apple on 6/5/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
