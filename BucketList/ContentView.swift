//
//  ContentView.swift
//  BucketList
//
//  Created by Jeric Hernandez on 1/23/24.
//

import MapKit
import SwiftUI

struct ContentView: View {
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))

    var body: some View {
        VStack {
            Map(position: $position)
                .mapStyle(.hybrid(elevation: .realistic))
            HStack(spacing: 50) {
                Button("Paris") {
                    position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                }
                Button("Tokyo") {
                    position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.6897, longitude: 139.6822), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
