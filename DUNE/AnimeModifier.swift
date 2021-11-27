//
//  AnimeModifier.swift
//  DUNE
//   本來是想包在opacity動畫中，不過看來是不能綁Binding，暫存之後可以試
//  Created by User03 on 2021/11/27.
//

import Foundation
import SwiftUI
struct AnimeModifier: ViewModifier{
    var opacity: Double
    func body(content: Content) -> some View {
        content
            .opacity(opacity)
            .animation(.easeOut(duration:5),value: opacity)
    }
}
