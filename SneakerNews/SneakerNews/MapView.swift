//
//  MapView.swift
//  SneakerNews
//
//  Created by Sloane Houston on 9/6/19.
//  Copyright © 2019 Sloane Houston. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    
    func makeUIView(context:
        UIViewRepresentableContext<MapView>) ->
        MKMapView {
        
            MKMapView()
    }
        
    func updateUIView(_
            uiView: MKMapView.UIViewType,
                      context: UIViewRepresentableContext<MapView>) {
    
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0,
                                    longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center:
            coordinate, span: span)
            uiView.setRegion(region, animated:true)
    }
        
        
    }


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

