//
//  MapView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//
// https://www.youtube.com/watch?v=gy6rp_pJmbo

import SwiftUI
import MapKit

struct MapView: View {
    let searchText: String
    @State private var cameraPosition: MapCameraPosition = .region(.userRegion)
    @State private var results = [MKMapItem]()
    @State private var mapSelection: MKMapItem?
    @State private var showDetails = false
    @State private var getDirections = false
    @State private var routeDisplaying = false
    @State private var route: MKRoute?
    @State private var routeDestination: MKMapItem?
    
    var body: some View {
        Map(position: $cameraPosition, selection: $mapSelection) {
//            UserAnnotation()
            Annotation("You're here!", coordinate: .userLocation) {
                ZStack {
                    Circle()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.luluRed.opacity(0.25))
                    
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                    
                    Circle()
                        .frame(width: 12, height: 12)
                        .foregroundColor(.luluRed)
                }
            }
            
            ForEach(results, id: \.self) { item in
                if  routeDisplaying {
                    if item == routeDestination {
                        Annotation("Destination", coordinate: item.placemark.coordinate) {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60)
                        }
                    }
                } else {
                    let placemark = item.placemark
                    let isSelected = item == mapSelection
                    Annotation("", coordinate: placemark.coordinate) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: isSelected ? 60 : 40)
                    }
                }
            }

            if let route {
                MapPolyline(route.polyline)
                    .stroke(.luluRed, lineWidth: 6)
            }
            
        }
        .mapControls {
            MapCompass()
            MapPitchToggle()
            MapUserLocationButton()
        }
        .onChange(of: searchText) { oldValue, newValue in
            Task {
                await searchPlaces()
//                dump("result 1  : \(results)")
            }
        }
        .onChange(of: mapSelection) { oldValue, newValue in
            showDetails = newValue != nil
        }
        .onChange(of: getDirections, { oldValue, newValue in
            if newValue {
                fetchRoute()
            }
        })
        .onAppear {
            Task {
                await searchPlaces()
//                dump("result 2 : \(results)")
            }
        }
        .sheet(isPresented: $showDetails, content: {
            ShopDetailsView(mapSelection: $mapSelection, show: $showDetails, getDirections: $getDirections)
                .presentationDetents([.height(400)])
                .presentationBackgroundInteraction(.enabled(upThrough: .height(400)))
                .presentationCornerRadius(12)
        })


    }
}
//private func routeAnnotation(for item: MKMapItem) -> some View {
//    Group {
//        if item == routeDestination {
//            Annotation("", coordinate: item.coordinate) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 60)
//            }
//        }
//    }
//}
//
//private func mapAnnotation(for item: MKMapItem) -> some View {
//    let placemark = item.placemark
//    return Group {
//        Annotation("", coordinate: placemark.coordinate) {
//            if item == mapSelection {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 60)
//            } else {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 40)
//            }
//        }
//    }
//}

extension MapView {
    func searchPlaces() async {
//        print("searchPlaces")
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchText
        request.region = .userRegion
        let results = try? await MKLocalSearch(request: request).start()
        self.results = results?.mapItems ?? []
//        dump(self.results)
    }
    
    func fetchRoute() {
        if let mapSelection {
            let request = MKDirections.Request()
            request.source = MKMapItem(placemark: .init(coordinate: .userLocation))
            request.destination = mapSelection
            
            Task {
                let result = try? await MKDirections(request: request).calculate()
                route = result?.routes.first
                routeDestination = mapSelection
                
                withAnimation(.snappy) {
                    routeDisplaying = true
                    showDetails = false
                    
                    if let rect = route?.polyline.boundingMapRect, routeDisplaying {
                        cameraPosition = .rect(rect)
                    }
                }
            }
        }
    }
}
extension CLLocationCoordinate2D {
    
    /// sample data
    static var downtownLocation: CLLocationCoordinate2D {
        return .init(latitude: 49.2832045, longitude: -123.1228603)
    }
    /// sample data
    static var metrotownLocation: CLLocationCoordinate2D {
        return .init(latitude: 49.2261456, longitude: -123.0016187)
    }
    /// sample datas
    static var westGeogiaLocation: CLLocationCoordinate2D {
        return .init(latitude: 49.283204, longitude: -123.1305851)
    }
    static var userLocation = downtownLocation
}

extension MKCoordinateRegion {
    static var userRegion: MKCoordinateRegion {
        return .init(center: .userLocation, latitudinalMeters: 2000, longitudinalMeters: 2000)
    }
}

#Preview {
    MapView(searchText: "test")
}

//                Annotation("Downtown Store", coordinate: .downtownLocation) {
//                    Image("logo")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 40)
//                }
//
//                Annotation("W.Geogia Store", coordinate: .westGeogiaLocation) {
//                    Image("logo")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 40)
//                }
//
//                Annotation("Metrotown Store", coordinate: .metrotownLocation) {
//                    Image("logo")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 40)
//                }
