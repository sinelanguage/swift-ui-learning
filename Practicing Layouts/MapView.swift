//
//  MapView.swift
//  Practicing Layouts
//
//  Created by Adam Winick on 2020-05-09.
//  Copyright © 2020 Adam Winick. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
            MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 43.5183,
            longitude: -79.8774
        )
        
        let span = MKCoordinateSpan(
            latitudeDelta: 1.0,
            longitudeDelta: 1.0
        )
        
        let region = MKCoordinateRegion(
            center: coordinate,
            span: span
        )
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
