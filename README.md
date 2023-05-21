# Binding Property Wrapper

<img src="https://github.com/SezginCiftci/SwiftUI_PropertyWrappers/blob/main/BindingWrapper/BindingWrapper/BindingWrapper.gif" width="250">


##### Binding Wrapper Declaration Example 

     @Binding var text: String

##### Usage

     TextField("Placeholder", text: $text)

##### View declaration using Binding 

     struct SCTextField: View {
    //MARK: Property
    @Binding var text: String
    
    //MARK: Body
    var body: some View {
        VStack {
              TextField(textFieldType.textFieldPlaceholder, text: $text)
        } //VStack
      }
    }

##### Implementation

struct ContentView: View {
    //MARK: Property
    @State private var username: String = ""
    
    //MARK: Body
    var body: some View {
        SCTextField(textFieldType: .username, text: $username)
    }
}

## <a href="https://medium.com/@sezgin0776/swiftuida-enviroment-wrapper-ne-i̇şe-yarar-dba714b02a0">Environment Wrapper Medium Article</a>
