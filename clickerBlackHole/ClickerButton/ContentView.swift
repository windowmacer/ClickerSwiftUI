//
//  ContentView.swift
//  ClickerButton
//
//  Created by Кирилл Арефьев on 22.04.2023.
//

import SwiftUI

struct ContentView: View {
	private var countClick = 0
	@State private var rangClick = 10.0
	
	func incrementRang() {
		rangClick += 10.0
		if rangClick > 800 {
			rangClick = 10.0
		}
	}
	
	var body: some View {
		VStack {
			Button {
				incrementRang()
			} label: {
				Text("")
					.font(.headline)
					.frame(width: rangClick, height: rangClick)
					.padding()
					.background(
						Capsule()
							.foregroundColor(
								.black
							)
					)
			}

		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
