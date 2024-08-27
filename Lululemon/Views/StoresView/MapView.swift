//
//  MapView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var cameraPosition: MapCameraPosition = .region(.userRegion)
    
    var body: some View {
        Map(position: $cameraPosition) {
//            Marker("Downtown store", systemImage: "circle.fill", coordinate: .userLocation)
            
            UserAnnotation()
            
            Annotation("Downtown Store", coordinate: .downtownLocation) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
            }
            
            Annotation("W.Geogia Store", coordinate: .westGeogiaLocation) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
            }
            
            Annotation("Metrotown Store", coordinate: .metrotownLocation) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
            }
        }
        .mapControls {
            MapCompass()
            MapPitchToggle()
            MapUserLocationButton()
        }

    }
}

extension CLLocationCoordinate2D {
    static var downtownLocation: CLLocationCoordinate2D {
        return .init(latitude: 49.2832045, longitude: -123.1228603)
    }

    static var metrotownLocation: CLLocationCoordinate2D {
        return .init(latitude: 49.2261456, longitude: -123.0016187)
    }
    
    static var westGeogiaLocation: CLLocationCoordinate2D {
        return .init(latitude: 49.283204, longitude: -123.1305851)
    }
}

extension MKCoordinateRegion {
    static var userRegion: MKCoordinateRegion {
        return .init(center: .downtownLocation, latitudinalMeters: 2000, longitudinalMeters: 2000)
    }
}

#Preview {
    MapView()
}
