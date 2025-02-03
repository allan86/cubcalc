<?php
global $wpdb;

// Verifica se o estado foi passado via GET
$estado = isset($_GET['edit']) ? sanitize_text_field($_GET['edit']) : '';
if (empty($estado)) {
    wp_die(__('Estado inválido.', 'cubcalc'));
}

// Busca os dados do estado no banco de dados
$dados = $wpdb->get_results($wpdb->prepare(
    "SELECT * FROM {$wpdb->prefix}cubcalc_indices 
    WHERE estado = %s AND tipo_obra IN ('R1', 'R8', 'PP4')",
    $estado
));

// Agrupa os dados por tipo de obra
$dados_agrupados = [];
foreach ($dados as $item) {
    $dados_agrupados[$item->tipo_obra][$item->padrao] = $item;
}
?>

<div class="wrap cubcalc-admin">
    <h1><?php printf(__('Editando %s - %s', 'cubcalc'), $estado, Cubcalc_Admin_Menus::get_nome_estado($estado)) ?></h1>
    
    <form method="post" action="<?php echo esc_url(admin_url('admin-post.php')) ?>">
        <input type="hidden" name="action" value="cubcalc_save">
        <?php wp_nonce_field('cubcalc_nonce') ?>
        <input type="hidden" name="estado" value="<?php echo esc_attr($estado) ?>">

        <div class="postbox">
            <h2><?php echo esc_html($estado) ?> - <?php echo esc_html(Cubcalc_Admin_Menus::get_nome_estado($estado)) ?></h2>
            
            <div class="form-group">
                <label><?php esc_html_e('Referência:', 'cubcalc') ?></label>
                <input type="text" name="sinduscon" value="<?php echo esc_attr($dados[0]->sinduscon_referencia) ?>" required>
            </div>

            <?php foreach (['R1', 'R8', 'PP4'] as $tipo) : ?>
                <div class="tipo-obra">
                    <h3><?php echo esc_html($tipo) ?></h3>
                    <table class="form-table">
                        <?php foreach (['padrao_baixo', 'padrao_normal', 'padrao_alto'] as $padrao) : 
                            $valor = $dados_agrupados[$tipo][$padrao] ?? null;
                        ?>
                            <tr>
                                <th><?php echo esc_html(ucfirst($padrao)) ?></th>
                                <td>
                                    <input type="text" 
                                        name="valores[<?php echo esc_attr($tipo) ?>][<?php echo esc_attr($padrao) ?>]" 
                                        value="<?php echo $valor ? esc_attr(number_format($valor->custo, 2, ',', '')) : '0,00' ?>"
                                        class="cubcalc-money">
                                    <input type="hidden" 
                                        name="ids[<?php echo esc_attr($tipo) ?>][<?php echo esc_attr($padrao) ?>]" 
                                        value="<?php echo $valor ? esc_attr($valor->id) : '' ?>">
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </table>
                </div>
            <?php endforeach; ?>
        </div>

        <?php submit_button(__('Salvar Alterações', 'cubcalc')) ?>
        <a href="<?php echo esc_url(remove_query_arg('edit')) ?>" class="button">
            <?php esc_html_e('Cancelar', 'cubcalc') ?>
        </a>
    </form>
</div>