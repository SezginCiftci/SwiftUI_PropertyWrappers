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

## <a href="https://medium.com/@sezgin0776/swiftuida-binding-property-wrapper-nasıl-kullanılır-64b0aa5b0acb">Binding Wrapper Medium Article</a>
 
