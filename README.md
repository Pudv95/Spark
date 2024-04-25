# Spark
## Flutter App Folder Structure Generator

This tool helps you create a decent folder structure for your Flutter app and manage assets.

## Installation

1. Ensure you have [Dart SDK](https://dart.dev/get-dart) installed on your machine.
2. Clone this repository to your local machine:

```
git clone https://github.com/pudv95/Spark.git
```

3. Navigate to the project directory:

```
cd Spark
```

4. Run the following command to install the tool:

```
dart pub global activate --source path ./
```

## Usage

Once the tool is installed, you can use it to create a Flutter app with a predefined folder structure and manage assets.

### Creating a New Flutter App

To create a new Flutter app with the predefined folder structure, run:

```
Spark create
```
![image](https://github.com/Pudv95/Spark/assets/84613655/af49dedb-d02c-4ae5-bb6d-ce35a864269f)


This will create a basic folder structure for you app.

![image](https://github.com/Pudv95/Spark/assets/84613655/a27cf3b3-8736-41e4-8428-eeadfdb06d36)


### Managing Assets

The tool provides commands to manage assets in your project.

#### Get All Assets

To create a class for all the Icons and Images in the assets directory, run:

```
Spark getAssets
```

This command will generate a Dart class with constants for each asset folder.

![image](https://github.com/Pudv95/Spark/assets/84613655/03a2389c-4806-4c82-9a41-d2864e5908ac)

#### Adding Assets

To add assets to your project, simply place them inside the `assets` folder. The tool will automatically include them in your Flutter app.

![image](https://github.com/Pudv95/Spark/assets/84613655/1b5473b3-be33-4785-a753-6bf8af41cac8)

![image](https://github.com/Pudv95/Spark/assets/84613655/cb8ed214-7a83-4ce3-ad1a-a2dced6f3741)



### Feature Management

The tool provides commands to manage features in your project.

#### Creating a New Feature

To create folder structure for a new feature, run:

```
Spark -f MyFeature
```
##### OR
```
Spark --addFeature MyFeature
```

Replace `MyFeature` with the name of your new feature.

![image](https://github.com/Pudv95/Spark/assets/84613655/b04cc288-7e3d-4109-bae6-a1e758223205)


### Removing an Existing Feature

To remove folder structure of an existing feature, run:

```
Spark -r MyFeature
```
#### OR
```
Spark --removeFeature MyFeature
```

Replace `MyFeature` with the name of the feature you want to remove.

![image](https://github.com/Pudv95/Spark/assets/84613655/12596e86-2af4-4636-b3b5-706a1918aebf)


### Routing Management

The tool provides commands to manage routing in your project.

#### Managing Routing

To create files and folder structure for routing, run:

```
Spark init_routes
```

![image](https://github.com/Pudv95/Spark/assets/84613655/151959c4-8c3b-4204-8b5f-16bad5487e48)


This command will create necessary files and folder structure for managing routing in your Flutter app.

![image](https://github.com/Pudv95/Spark/assets/84613655/c5740307-2f3e-48a1-a446-8ce29595c777)


## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on [GitHub](https://github.com/pudv95/Spark).

## Suggestions

If you have any suggestions or feature requests for this tool, please feel free to open an issue on [GitHub](https://github.com/pudv95/Spark/issues).
