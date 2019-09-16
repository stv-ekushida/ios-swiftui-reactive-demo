//
//  View+Style.swift
//  swift-ui-reactive-demo
//
//  Created by Kushida　Eiji on 2019/09/16.
//  Copyright © 2019 Kushida　Eiji. All rights reserved.
//

import SwiftUI

extension View {
    
    func setTextFieldStyle() -> some View {
        return self.background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .shadow(radius: 5)
    }
    
    func setButtonStyle() -> some View {
        
        return self.clipShape(RoundedRectangle(cornerRadius: 5))
        .shadow(radius: 5)
    }
}
