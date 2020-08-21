# ViewCapture

An easy way to get all the views showing on the screen and to layout changes to Views from a Model object. 

Caveat: The views must be properties/instance variables, but it will grab views of all sub view controllers including a NavigationControllers top view controller, any presenting view controller, an embedded view controller, etc.  


Get all views on Screen:
```
let views: [String: UIView] = UIApplication.takeSnapshotOfViews()
```
or do it per View Controller (this applies to all functions here): 
```
let views: [String : UIView] = viewController.takeSnapshotOfViews()
```

The `String` key represents a unique name for that view that intends to avoid collisions with other views.   
The general format is: `[OwningViewController.instanceVariableName]`.  

In cases where a ViewController owns 2 SubViewControllers of the same type and lays out 2 views of those SubViewControllers with same instance variable name, the scheme is `[OwningViewController.instanceVariableName[index]]`.  where the index will be the same.   

Get a `ViewStore` object representing each view in cases where you need to send over JSON or use in CoreData:
```
let views: [ViewStore]? = UIApplication.getViewStores()
```

Layout changes to `UIView`s from values of a `ViewStore` if they exist on screen: 
``` 
let viewStores: [ViewStore] = ...
UIApplication.layoutViews(from: viewStores)
``` 
