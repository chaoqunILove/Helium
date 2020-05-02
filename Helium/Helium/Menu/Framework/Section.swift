//
//  Section.swift
//  Helium
//
//  Created by Jaden Geller on 5/1/20.
//  Copyright © 2020 Jaden Geller. All rights reserved.
//

import Cocoa

struct Separator: PrimitiveMenu {
    var body: Menu {
        fatalError("Separator is a primitive Menu")
    }

    func makeNSMenuItem() -> NSMenuItem {
        NSMenuItem.separator()
    }
}

struct Section: Menu {
    var innerBody: Menu
    
    var body: Menu {
        Group {
            Separator()
            innerBody
            Separator()
        }
    }

    init(@MenuBuilder body: () -> Menu) {
        self.innerBody = body()
    }
}