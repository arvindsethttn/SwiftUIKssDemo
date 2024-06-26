//
//  Item.swift
//  SwiftUIDemo
//
//  Created by Arvind Seth on 18/06/24.
//

/*
import Foundation
struct Item: Identifiable {
    var id = UUID()
    var name: String
    var title: String
    var description: String

    static func sampleData() -> [Item] {
           return [
               Item(name: "State", title: "Managing State", description: """
                   A property wrapper type that can read and write a value managed by SwiftUI.
                   In app development, state refers to the data that drives the behavior and rendering of a user interface.
                   This can include simple data like a toggle switch's on/off state and more complex data like a list of items in a table view.
                   In SwiftUI, state is stored in a view's struct and updated using mutating methods.
                   """
               ),
               Item(name: "Binding", title: "Two-way Binding", description: """
                   Binding is a property wrapper that creates a two-way connection between a view and its underlying model data.
                   When the model data changes, the view updates. Similarly, when the user interacts with the view and changes data, the model updates.
                   This allows for seamless synchronization of data between the view and its source of truth.
                   """
               ),
               Item(name: "ObservableObject", title: "Observable Objects", description: """
                   ObservableObject is a protocol that allows a custom object to announce changes to its properties.
                   When marked with @ObservedObject property wrapper in a SwiftUI view, the view subscribes to updates from the observable object.
                   This pattern enables reactive updates in the UI based on changes to the underlying data model.
                   """
               ),
               Item(name: "EnvironmentObject", title: "Environment Objects", description: """
                   EnvironmentObject is a way to share data across an entire SwiftUI app.
                   It's an observable object that's injected into the SwiftUI environment at the top level and can be accessed by any child view.
                   This is useful for managing global state or data that needs to be accessed by multiple views throughout the app.
                   """
               ),
               Item(name: "NavigationLink", title: "Navigation Links", description: """
                   NavigationLink is a view used to navigate between different views in a SwiftUI app.
                   It provides a clickable area that triggers navigation to another view when tapped.
                   Navigation links are often used within lists or grids to create hierarchical navigation structures.
                   """
               ),
               Item(name: "List", title: "Lists", description: """
                   List is a container view in SwiftUI used to display rows of data in a vertically scrolling list.
                   It's similar to UITableView in UIKit and is commonly used for displaying collections of data such as contacts, messages, or items in an inventory.
                   """
               ),
               Item(name: "TextField", title: "Text Fields", description: """
                   TextField is a view in SwiftUI that allows users to enter and edit text.
                   It provides a text input area where users can type text using the on-screen keyboard.
                   TextField can be customized with placeholder text, keyboard type, and more.
                   """
               ),
               Item(name: "Button", title: "Buttons", description: """
                   Button is a view in SwiftUI that triggers an action when tapped by the user.
                   It's used to create interactive elements in the user interface such as submit buttons, navigation buttons, or any custom action-triggering controls.
                   """
               ),
               Item(name: "Alert", title: "Alerts", description: """
                   Alert is a user interface element in SwiftUI used to display important messages or prompts to the user.
                   It typically includes a title, message, and one or more buttons for user interaction.
                   Alerts are commonly used to inform users about errors, confirmations, or other critical information.
                   """
               ),
               Item(name: "Sheet", title: "Sheets", description: """
                   Sheet is a modal presentation style in SwiftUI used to display content temporarily over the current view.
                   It slides up from the bottom of the screen and can be dismissed by the user with a swipe gesture or a button.
                   Sheets are useful for presenting forms, settings, or any secondary views that need to be shown temporarily.
                   """
               )
           ]
       }
}
*/
