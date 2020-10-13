# MyFirstApp

In this project students will learn the basics of the MVC Design Patter.

## Part 1 - The M of MVC

### Talking points 
- M is for Model, the objects that will power our app. It's important to keep the Models seperate so we always know what to expect when interacting with one. 
- Models can conain things like properties, and initializers. Functions do not belong on the Model, functions that interact with the model will go on the Model Controller.

#### Build the Model
- Build out the Wizard Model. Once the initializer is finished, explain that this model is now done, and any interactin we will be doing with it will be done on the Model Controller

## Part 2 - The C of MVC
- C is for Controller. In an effort to keep code clean and organized, we will build controllers that are responsible for specific parts of the app. 
- Our models will require controllers to interact with instances of the model. 

#### Build the Model Controller
- Build out the WizardController
- Explain that we are using mock data and that the static property will return us an array of Wizard objects. 
- This goes into the Model Controller because a Model should ever know about itself, never about another object. The model controller is responsible for managing all instances of that model type.

## Part 3 - The V of MVC
- V is for View. Views also use Controllers that fall under the C of MVC. ViewControllers feed information to their respective Views.
- ViewControllers take the Model information from the ModelControllers. Then they distribute the information appropriately to the right Views.
- The end flow looks something like this M -> MC -> VC -> V

#### Build the View Controllers
- Build the TableViewController.
- The TableViewController has a view that exists on it, a tableVIew, that we need to give information to populate correctly. This ViewController will take the info it needs to populate the tableView from the WizardController, pass that information along to the cells (views) to display.
- Build the DetailViewController.
- The DetailViewController has outlets (views) that need to be supplied information to display properly. The information for these views will come from the WizardViewController, but we will use the TableViewController as a bridge, specifically prepareFor:(segue:).
- We need to know WHAT Wizard to pass to the detail view, so the TableViewController will help us find what Wizard we need to pass. The CONTROLLER of the VIEW that references the Wizard information we need that is stored in the WizardController, that's a mouthful. 
- Build out prepareFor(segue:) and pass the Wizard to the DetailView, empasize that the Wizard is coming from the SOT on the WizardController.
