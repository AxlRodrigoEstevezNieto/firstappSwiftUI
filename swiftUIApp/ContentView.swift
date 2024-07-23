//
//  ContentView.swift
//  swiftUIApp
//
//  Created by aestevezn on 10/07/24.
//

import SwiftUI

struct ContentView: View {
    private let customPaddingLeading = EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0)
    var dismisAction: (() -> Void)
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack(alignment: .center, spacing: 0) {
                Button(action: {
                    dismisAction()
                }, label: {
                    Image(systemName: "arrow.backward")
                        .frame(width: 50, height: 50)
                        .imageScale(.large)
                        .foregroundColor(.blue)
                        
                })
                .padding(CustomPaddings.leading)
                Text("Afiliación de comercios")
                    .font(.title2)
                    .fontWeight(.black)
                    .padding(CustomPaddings.leading)
                    .padding(CustomPaddings.trailing)
            }
            
            VStack(alignment: .leading, content: {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Información/")
                        .padding(CustomPaddings.leading)
                    Text("Dirección")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(customPaddingLeading)
                }
                
            })
            FormView()
        }
        
        VStack(alignment: .center) {
            Button(action: {}, label: {
                Text("Siguiente")
                    .foregroundStyle(.white)
                    .font(.system(size: 18))
                Image(systemName: "arrow.forward")
                    .foregroundStyle(.white)
            })
            .foregroundStyle(.blue)
            .frame(width: 160, height: 35)
            .ignoresSafeArea()
            .overlay {
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.blue)
            }
            .background(Color.blue)
            .cornerRadius(15)
        }
    }
}

#Preview {
    ContentView(dismisAction: {})
}
