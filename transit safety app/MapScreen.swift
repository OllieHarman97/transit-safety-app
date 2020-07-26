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
            
            
            
            
            GoogleMapView().frame(width: 377.0, height: 400, alignment: .center)
            
            
        }
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen(viewRouter: ViewRouter())
    }
}

struct GoogleMapView: UIViewRepresentable {
    
    //@Binding var dest: String
    // 1.
    func makeUIView(context: UIViewRepresentableContext<GoogleMapView>) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.2, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        return mapView
    }
    
    // 2.
    func updateUIView(_ uiView: GMSMapView, context: UIViewRepresentableContext<GoogleMapView>) {
        // 3.
        
        }
    }
