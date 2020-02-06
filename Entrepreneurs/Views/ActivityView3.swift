//
//  ActivityView3.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 04/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct ActivityView3: View {
    
     @State private var notes = "RDV client pour validation de la maquette."
    
    var body: some View {
            Form {
                    HStack {
                        Text("Activité")
                        .fontWeight(.light)
                        Spacer()
                        Text("Casino")
                    }
                    HStack {
                        Text("Date de début")
                        .fontWeight(.semibold)
                        Spacer()
                        Text("7/2/2020, 8:30 AM")
                    }
                    HStack {
                        Text("Date de fin")
                        .fontWeight(.semibold)
                        Spacer()
                        Text("7/2/2020, 11:30 AM")
                    }
                    HStack {
                        Text("Client")
                        .fontWeight(.semibold)
                        Spacer()
                        NavigationLink(destination: CustomerCardView()) {
                            Text("Steve Jobs")
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    HStack {
                        Text("Type d'activité")
                        .fontWeight(.semibold)
                    }
                    
                ZStack{
                    Color.red
                    .frame(width: 380.0, height: 50.0)
                    Text("Rdv Pro")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                    
                    
                VStack(alignment: .leading, spacing: 10) {
                        Text("Notes")
                        .fontWeight(.semibold)
                    Text("RDV client pour validation de la maquette.")
                        .padding(.bottom, 500.0)
                    }
                } .navigationBarTitle(Text("Casino"), displayMode: .inline)
                .navigationBarItems(
                    trailing: Text("Modifier").foregroundColor(Color.blue))
    }
}

struct ActivityView3_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ActivityView3()
        }
    }
}
