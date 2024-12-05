<?php
// Datos de conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "base_de_datos";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    // Si la conexión falla, mostrar un mensaje de error en una página estilizada con Bootstrap
    die("
    <!DOCTYPE html>
    <html lang='es'>
    <head>
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <title>Error de conexión</title>
        <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css' rel='stylesheet'>
    </head>
    <body>
        <div class='container mt-5'>
            <div class='alert alert-danger' role='alert'>
                <strong>Error de conexión:</strong> " . htmlspecialchars($conn->connect_error) . "
            </div>
        </div>
    </body>
    </html>
    ");
}

// Nombre del archivo CSV que se va a importar
$csv_file = "Clientes.csv";
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Importar Clientes</title>
    <!-- Enlace al archivo CSS de Bootstrap para estilizar la página -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Importación de Clientes</h1>
        <div class="card">
            <div class="card-body">
                <?php
                // Abrir el archivo CSV
                if (($file = fopen($csv_file, 'r')) !== false) {
                    // Mostrar un título dentro de la tarjeta
                    echo "<h5 class='card-title'>Resultados de la Importación</h5>";
                    // Crear una lista para mostrar los resultados de la importación
                    echo "<ul class='list-group'>";

                    // Leer el encabezado del archivo CSV (primera línea, que contiene los nombres de columnas)
                    $header = fgetcsv($file);

                    // Iterar sobre las filas del archivo CSV
                    while (($row = fgetcsv($file)) !== false) {
                        // Asignar valores de las columnas a variables
                        $idCliente = $row[0];
                        $apellidoCliente = $row[1];

                        // Preparar una consulta SQL para insertar datos en la base de datos
                        $stmt = $conn->prepare("INSERT INTO clientes (idCliente, apellidoCliente) VALUES (?, ?)");
                        $stmt->bind_param("is", $idCliente, $apellidoCliente);

                        // Ejecutar la consulta y verificar si tuvo éxito
                        if ($stmt->execute()) {
                            // Mostrar un mensaje de éxito como un elemento de la lista
                            echo "<li class='list-group-item list-group-item-success'>Nuevo cliente creado exitosamente: ID $idCliente, Apellido $apellidoCliente</li>";
                        } else {
                            // Mostrar un mensaje de error como un elemento de la lista
                            echo "<li class='list-group-item list-group-item-danger'>Error: " . htmlspecialchars($stmt->error) . "</li>";
                        }

                        // Cerrar la consulta preparada
                        $stmt->close();
                    }

                    // Cerrar la lista
                    echo "</ul>";
                    // Cerrar el archivo CSV
                    fclose($file);
                } else {
                    // Mostrar un mensaje de advertencia si el archivo CSV no se puede abrir
                    echo "<div class='alert alert-warning' role='alert'>Error al abrir el archivo CSV.</div>";
                }

                // Cerrar la conexión a la base de datos
                $conn->close();
                ?>
            </div>
        </div>
    </div>

    <!-- Scripts de Bootstrap (opcional para funcionalidades interactivas como alertas o botones) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
