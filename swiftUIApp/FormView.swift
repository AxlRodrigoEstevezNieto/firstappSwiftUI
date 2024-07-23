//
//  FormView.swift
//  swiftUIApp
//
//  Created by aestevezn on 12/07/24.
//

import SwiftUI
import MapKit

struct FormView: View {
    @State private var codigoPostalEntregas: String = String.emptyString
    @State private var direccionDeEntregas: String = String.emptyString
    @State private var codigoPostalFiscal: String = String.emptyString
    @State private var direccionFiscal: String = String.emptyString
    @StateObject var locationManager = LocationManager()

    var body: some View {
        
        Form {
            Section(header: Text("Código postal de entregas")) {
                TextField (
                    String.empty,
                    text: $codigoPostalEntregas
                )
            }
            
            Section(header: Text("Calle y número de la dirección de entregas")) {
                TextField (
                    String.empty,
                    text: $direccionDeEntregas
                )
            }
            
            Section {
                Map(initialPosition: .region($locationManager.region.wrappedValue), interactionModes: [.all, .pitch, .rotate])
                    .mapControlVisibility(.visible)
                    .mapControls{
                        MapScaleView()
                        MapUserLocationButton()
                    }
            }
            .frame(height: 300)
            
            Section(header: Text("Código postal fiscal*")) {
                TextField(
                    String.empty,
                    text: $codigoPostalFiscal
                )
            }
            
            Section(header: Text("Calle y número de la dirección fiscal*")){
                TextField(
                    String.empty,
                    text: $direccionFiscal
                )
            }
        }
    }
}

#Preview {
    FormView()
}
