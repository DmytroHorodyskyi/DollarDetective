//
//  TotalLabel.swift
//  DollarDetective
//
//  Created by Dmytro Horodyskyi on 18.03.2023.
//

import SwiftUI

struct TotalLabel: View {
    @State private var total = 123456789000

    var body: some View {
        HStack {
            Text("\(total)")
                .font(.system(size: 40))
                .bold()
                .foregroundColor(Color("GoldColor"))
            Text("USD")
                .font(.system(size: 30))
                .bold()
                .foregroundColor(Color("GoldColor"))
        }
    }
}
