<!DOCTYPE html>
<html lang="es">
<head>
    <!-- Especifica que el documento está en español -->
    <meta charset="UTF-8">
    <!-- Configura la página para adaptarse a dispositivos móviles -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Título de la página -->
    <title>Advertencia sobre archivos CSV</title>
    <!-- Enlace al archivo CSS de Bootstrap para aplicar estilos -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Contenedor principal con margen superior -->
    <div class="container mt-5">
        <!-- Alerta de tipo 'danger' para mostrar un mensaje importante -->
        <div class="alert alert-danger" role="alert">
            <!-- Encabezado del mensaje de alerta -->
            <h3 class="alert-heading">¡Atención! Formato de archivos CSV para MySQL</h3>
            <!-- Breve explicación de los requisitos -->
            <p>Asegúrese de que su archivo CSV cumpla con los siguientes requisitos para una importación exitosa:</p>
            <!-- Lista de requisitos para el archivo CSV -->
            <ul>
                <li><strong>Separador de campos:</strong> Use una coma (,).</li>
                <li><strong>Codificación:</strong> UTF-8.</li>
                <li><strong>Estructura:</strong> La primera fila debe contener los nombres de las columnas.</li>
                <li><strong>Tipos de datos:</strong> Asegúrese de la compatibilidad con la base de datos.</li>
                <li><strong>Valores nulos:</strong> Configure correctamente su importación.</li>
                <li><strong>Formato:</strong> No use estilos ni celdas compartidas.</li>
            </ul>
            <!-- Advertencia adicional sobre errores -->
            <p>No cumplir con estos requisitos puede provocar errores durante la importación.</p>
        </div>
        <!-- Botón estilizado con Bootstrap para redirigir a la página de importación -->
        <button class="btn btn-success btn-lg" onclick="window.location.href='importar.php'">Importar a MySQL</button>
    </div>

    <!-- Scripts de Bootstrap (opcional para funcionalidades interactivas como alertas o botones) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
