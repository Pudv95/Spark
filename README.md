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

This will create a basic folder structure for you app.

### Managing Assets

The tool provides commands to manage assets in your project.

#### Get All Assets

To create a class for all the Icons and Images in the assets directory, run:

```
Spark getAssets
```

This command will generate a Dart class with constants for each asset folder.

#### Adding Assets

To add assets to your project, simply place them inside the `assets` folder. The tool will automatically include them in your Flutter app.

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

### Routing Management

The tool provides commands to manage routing in your project.

#### Managing Routing

To create files and folder structure for routing, run:

```
Spark init_routes
```

This command will create necessary files and folder structure for managing routing in your Flutter app.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on [GitHub](https://github.com/your_username/Spark).

## Suggestions

If you have any suggestions or feature requests for this tool, please feel free to open an issue on [GitHub](https://github.com/your_username/Spark/issues).
