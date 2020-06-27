//
//  PageView.swift
//  Bread Calculator
//
//  Created by Aaron Sears on 4/13/20.
//  Copyright © 2020 Aaron Sears. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0)}
    }
    
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

//struct PageView_Previews: PreviewProvider {
//    static var previews: some View {
//        PageView()
//    }
//}
