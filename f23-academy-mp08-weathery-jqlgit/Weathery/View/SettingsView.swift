//
//  SettingsView.swift
//  Weathery
//
//  Created by Justin Li on 11/16/23.
//

import SwiftUI

struct SettingsView: View {
    
    var options = ["Celcius", "Kelvin", "Farenheit"]
    @ObservedObject var unit: UnitVM

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker("Units", selection: $unit.currOption) {
                        ForEach(options, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
        }
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(unit: UnitVM())
    }
}
