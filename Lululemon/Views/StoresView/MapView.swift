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
    
    var body: some View {
        Map(position: $cameraPosition, selection: $mapSelection) {
            UserAnnotation()
            
            if results.count > 0 {
                ForEach(results, id:\.self) { item in
                    let placemark = item.placemark
                    Annotation("", coordinate: placemark.coordinate) {
                        if item == mapSelection {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60)
                        } else {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }
                    }
                }
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
            }
        }
        .onChange(of: mapSelection) { oldValue, newValue in
            showDetails = newValue != nil
        }
        .onAppear {
            Task {
                await searchPlaces()
            }
        }
        .sheet(isPresented: $showDetails, content: {
            ShopDetailsView(mapSelection: $mapSelection, show: $showDetails)
                .presentationDetents([.height(340)])
                .presentationBackgroundInteraction(.enabled(upThrough: .height(340)))
                .presentationCornerRadius(12)
        })


    }
}

extension MapView {
    func searchPlaces() async {
        print("searchPlaces")
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchText
        request.region = .userRegion
        let results = try? await MKLocalSearch(request: request).start()
        self.results = results?.mapItems ?? []
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
}

extension MKCoordinateRegion {
    static var userRegion: MKCoordinateRegion {
        return .init(center: .downtownLocation, latitudinalMeters: 2000, longitudinalMeters: 2000)
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
