//
//  PiperView.swift
//  BoneAppetit
//
//  Created by Shiyi Li on 2026-02-27.
//

import SwiftUI

struct Piper: View {
    
    @State private var selection: String = "Planned Feeding"
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Curent Slection", selection: $selection){
                    Text("Meals").tag("Meals")
                    Text("Planned Feeding").tag( "Planned Feeding")
                    Text("History").tag("History")
                }
                
                .pickerStyle(.segmented)
                
                Spacer()
            }
            
            .padding()
            .navigationTitle("Piper")
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button {
                    } label: {
                        Text("\(Image(systemName: "chevron.left"))Pets")
                    }
                    
                }
                
                ToolbarItem(placement: .primaryAction) {
                    
                    Button {
                    } label: {
                        Image(systemName: "plus")
                    }
                    .buttonStyle(.borderedProminent)
                }
                
            }
        }    }
}

#Preview {
    Piper()
}
