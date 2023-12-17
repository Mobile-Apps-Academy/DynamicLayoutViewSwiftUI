//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//

import SwiftUI

struct DynamicLayoutView: View {
    
    @State private var chagneLayout = true
    @Environment(\.verticalSizeClass) var verticleSizeClass
    
    var body: some View {
        ZStack {
            Color.black
            //let layout = chagneLayout ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
            
            let layout = verticleSizeClass == .regular ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Image(systemName: "square.and.arrow.up.circle.fill")
                    .font(.system(size: 80))
                    .frame(width: 120, height: 120)
                    .background(in: RoundedRectangle(cornerRadius: 5.0))
                    .backgroundStyle(.yellow)
                    .foregroundStyle(.white)
                
                Image(systemName: "pencil.circle.fill")
                    .font(.system(size: 80))
                    .frame(width: 120, height: 120)
                    .background(in: RoundedRectangle(cornerRadius: 5.0))
                    .backgroundStyle(.yellow)
                    .foregroundStyle(.white)
                
                Image(systemName: "trash.circle.fill")
                    .font(.system(size: 80))
                    .frame(width: 120, height: 120)
                    .background(in: RoundedRectangle(cornerRadius: 5.0))
                    .backgroundStyle(.yellow)
                    .foregroundStyle(.white)
            }
            .animation(.default, value: chagneLayout)
            .onAppear{
                chagneLayout.toggle()
            }
            .onTapGesture {
                chagneLayout.toggle()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
