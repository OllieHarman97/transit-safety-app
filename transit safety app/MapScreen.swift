//
//  MapScreen.swift
//  transit safety app
//
//  Created by Oliver Harman on 19/07/2020.
//  Copyright © 2020 Shannon Jin. All rights reserved.
//

import SwiftUI
import MapKit
import GoogleMaps


struct MapScreen: View {
    @ObservedObject var viewRouter: ViewRouter
    @State var input: String = ""

    
    var body: some View {
        ZStack{
            Image("MenuBar").resizable()
                .frame(width: 377.0, height: 200)
                .offset(y:-244)
            
            TextField("From", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .offset(x:76,y:-226)
            
            TextField("To", text: $input,onCommit: {
            }).offset(x:76, y:-268)
            
            
            
            
            GoogleMapView()
                .frame(width: 377.0, height: 400, alignment: .center)
            
            
        }
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen(viewRouter: ViewRouter())
    }
}

struct GoogleMapView: UIViewRepresentable {
    
    private let zoom: Float = 15.0
    // 1.
    func makeUIView(context: Self.Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: 40.7128, longitude: 74.0060, zoom: 12.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        return mapView
    }
    
    // 2.
    func updateUIView(_ mapView: GMSMapView, context: Context) {
        // 3.
        
        }
    }
