//
//  ContentView.swift
//  StringCalculator
//
//  Created by Zinal on 26/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var input: String = ""
    @State private var result: String = ""
    let calculator = StringCalculator()

    var body: some View {
        VStack(spacing: 20) {
            Text("String Calculator")
                .font(.largeTitle)

            TextField("Enter numbers", text: $input)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Calculate") {
                do {
                    let total = try calculator.addWithError(input)
                    result = "Result: \(total)"
                } catch {
                    result = "Error: \(error.localizedDescription)"
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Text(result)
                .font(.title2)
                .padding()

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
