//
//  ShopDetailsView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI
import MapKit

struct ShopDetailsView: View {
    @Binding var mapSelection: MKMapItem?
    @Binding var show: Bool
    @Binding var getDirections: Bool
    @State private var lookAroundScene: MKLookAroundScene?
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(mapSelection?.placemark.name ?? "lululemon")
                        .font(SystemFont.AppFont)
                        .fontWeight(.semibold)
                    
                    Text(mapSelection?.placemark.title ?? "")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .lineLimit(2)
                        .padding(.trailing)
                    
                    if let phone = mapSelection?.phoneNumber {
                        Text(phone)
                            .font(SystemFont.captionFont)
                    }
                }
                Spacer()
                
                Button {
                    show.toggle()
                    mapSelection = nil
                }  label: {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.gray)
                }
            }
            .padding()

            if let scene = lookAroundScene {
                LookAroundPreview(initialScene: scene)
                    .frame(height: 200)
                    .cornerRadius(12)
                    .padding()
            } else {
                ContentUnavailableView("No preview available", systemImage: "eye.slash")
            }
            
            HStack(spacing: 24) {
                Button {
                    if let mapSelection {
                        mapSelection.openInMaps()
                    }
                } label: {
                    Text("Open in Maps")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 170, height: 48)
                        .background(.cyan)
                        .cornerRadius(22)
                    
                    Button {
                        getDirections = true
                        show = false
                    } label: {
                        Text("Get Direction")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 170, height: 48)
                            .background(.mint)
                            .cornerRadius(22)
                    }
                }
            }
            
        }
        .onAppear {
//            print("onAppear fetch")
            fetchLookAroundPreview()
        }
        .onChange(of: mapSelection) { oldValue, newValue in
//            print("onChange fetch")
            fetchLookAroundPreview()
        }
        
    }
}

extension ShopDetailsView {
    func fetchLookAroundPreview() {
        if let mapSelection {
            lookAroundScene = nil
            Task {
                let request = MKLookAroundSceneRequest(mapItem: mapSelection)
                lookAroundScene = try? await request.scene
            }
        }
    }
}

#Preview {
    ShopDetailsView(mapSelection: .constant(nil), show: .constant(false), getDirections: .constant(false))
}
