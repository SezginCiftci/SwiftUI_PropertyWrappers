# Environment Property Wrapper

<img src="https://github.com/SezginCiftci/SwiftUI_EnvironmentWrapper/blob/main/SwiftUI_EnviromentWrapper/Environment.gif" width="250">


##### Environment Wrapper Declaration Example 

     @Environment(\.colorScheme) var colorScheme

##### Changing Image with Environment Wrapper Value

     Image(colorScheme == .dark ? "SezginCiftci" : "SezginCiftci2")

##### Changing Sheet View's Appearance with Environment Wrapper Value

     .sheet(isPresented: $isSheetPresented) {
         SheetView()
              .preferredColorScheme(colorScheme == .light ? .dark : .light)
      } //Sheet


## <a href="https://medium.com/@sezgin0776/swiftuida-enviroment-wrapper-ne-i̇şe-yarar-dba714b02a0">Environment Wrapper Medium Article</a>
