<?php
include 'db.php';
$sql = "SELECT * FROM Clientes";
$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Lista de Clientes</title>
    <style>
        body { font-family: Arial, sans-serif; }
        table { width: 80%; margin: 20px auto; border-collapse: collapse; }
        th, td { border: 1px solid #ccc; padding: 8px; text-align: center; }
        th { background: #333; color: white; }
        tr:nth-child(even) { background: #f2f2f2; }
        tr:nth-child(odd) { background: #fff; }
    </style>
</head>
<body>
    <h2 style="text-align:center;">Lista de Clientes</h2>
    <table>
        <tr>
            <th>ID</th><th>Nome</th><th>Endereço</th><th>Cidade</th><th>Telefone</th>
        </tr>
        <?php if($result && $result->num_rows > 0): ?>
            <?php while($row = $result->fetch_assoc()): ?>
                <tr>
                    <td><?= htmlspecialchars($row['Id_Cliente'], ENT_QUOTES, 'UTF-8') ?></td>
                    <td><?= htmlspecialchars($row['Nome'], ENT_QUOTES, 'UTF-8') ?></td>
                    <td><?= htmlspecialchars($row['Endereco'], ENT_QUOTES, 'UTF-8') ?></td>
                    <td><?= htmlspecialchars($row['Cidade'], ENT_QUOTES, 'UTF-8') ?></td>
                    <td><?= htmlspecialchars($row['Telefone'], ENT_QUOTES, 'UTF-8') ?></td>
                </tr>
            <?php endwhile; ?>
        <?php else: ?>
            <tr><td colspan="5">Nenhum cliente encontrado.</td></tr>
        <?php endif; ?>
    </table>
</body>
</html>
