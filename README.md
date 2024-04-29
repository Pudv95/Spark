# Spark
## Flutter App Folder Structure Generator

This tool helps you create a decent folder structure for your Flutter app and manage assets.

## Installation

Ensure you have [Dart SDK](https://dart.dev/get-dart) installed on your machine. then run the following command.

```
dart pub global activate flutter_spark
```

## Usage

Once the tool is installed, you can use it to create a Flutter app with a predefined folder structure and manage assets.

### Creating a New Flutter App

To create a new Flutter app with the predefined folder structure, run:
```
spark create myapp
```
![image](https://github.com/Pudv95/Spark/assets/84613655/731a6b82-dcca-4eaf-b0c1-fa239e10e1bc)

This command will create the app with a predefined folder structure..!!

### Creating folder structure in build app 

```
spark init folders
```
![image](https://github.com/Pudv95/Spark/assets/84613655/c522248e-6dcf-47b5-afcf-b627ad7f974a)


This will create a basic folder structure for you app.

![image](https://github.com/Pudv95/Spark/assets/84613655/41aeeadf-d66b-4a14-88e4-384e5ed4cc0b)


### Managing Assets

The tool provides commands to manage assets in your project.

#### Get All Assets

To create a class for all the Icons and Images in the assets directory, run:

```
spark init assets
```

This command will generate a Dart class with constants for each asset folder.

![image](https://github.com/Pudv95/Spark/assets/84613655/80a72d54-549a-4725-9f1e-2f4b8e63983d)

#### Adding Assets

To add assets to your project, simply place them inside the `assets` folder. The tool will automatically include them in your Flutter app.

![image](https://github.com/Pudv95/Spark/assets/84613655/1b5473b3-be33-4785-a753-6bf8af41cac8)

![image](https://github.com/Pudv95/Spark/assets/84613655/cb8ed214-7a83-4ce3-ad1a-a2dced6f3741)



### Feature Management

The tool provides commands to manage features in your project.

#### Creating a New Feature

To create folder structure for a new feature, run:

```
spark -a MyFeature
```
##### OR
```
spark --add_feature MyFeature
```

Replace `MyFeature` with the name of your new feature.

![image](https://github.com/Pudv95/Spark/assets/84613655/dcfb411c-4500-454d-9271-a9a9133b8962)

### Removing an Existing Feature

To remove folder structure of an existing feature, run:

```
spark -r MyFeature
```
#### OR
```
spark --remove_feature MyFeature
```

Replace `MyFeature` with the name of the feature you want to remove.

![image](https://github.com/Pudv95/Spark/assets/84613655/30bf193e-e550-4347-84dc-200be4058215)


### Routing Management

The tool provides commands to manage routing in your project.

#### Managing Routing

To create files and folder structure for routing, run:

```
spark init routes
```

![image](https://github.com/Pudv95/Spark/assets/84613655/151959c4-8c3b-4204-8b5f-16bad5487e48)


This command will create necessary files and folder structure for managing routing in your Flutter app.

![image](https://github.com/Pudv95/Spark/assets/84613655/199ca5ac-5c31-44d0-a97e-16a7f0f1a3c7)


## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on [GitHub](https://github.com/pudv95/Spark).

## Suggestions

If you have any suggestions or feature requests for this tool, please feel free to open an issue on [GitHub](https://github.com/pudv95/Spark/issues).
