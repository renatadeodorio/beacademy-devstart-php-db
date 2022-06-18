<h1>Listar Produtos</h1>

<div class="mb-3 text-end">
   <a href="/produtos/novo" class="btn btn-outline primary">Novo Produtos</a>
   </div>

<table class="table table-hover table-striped">
    <thead class="table-dark">
        <tr>
            <th>#ID</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Imagem</th>
            <th>Preço</th>
            <th>Quantidade</th>
            <th>Data de cadastro</th>
            <th>Ações</th>
        </tr>
    </thead>
    <tbody>

    <?php
            while ($product = $data->fetch(\PDO::FETCH_ASSOC)){

                extract($product);

                echo "
                  <tr>
                      <td>{$id}</td>

                      <td>{$name}</td>

                      <td>{$description}</td>
                      <td> <img width='100px' src='{$photo}</td>
                      <td>R${$value}</td>
                      <td>{$quantity}</td>
                      <td>{$created_at}</td>
                    <td>

                           Editar /Excluir
                    
                        <a href='/categorias/editar?id={$id}' class='btn btn-warning btn-sm'>Editar</a>
                        <a href='/categorias/excluir?id={$id}' class='btn btn-danger btn-sm'>Excluir</a>
                    </td>";
               
            }


        ?>
    </tbody>
</table>