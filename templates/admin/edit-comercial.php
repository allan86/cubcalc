<?php
global $wpdb, $dados;
$estado = isset($_GET['edit']) ? sanitize_text_field($_GET['edit']) : '';
$dados = $wpdb->get_results($wpdb->prepare(
    "SELECT * FROM {$wpdb->prefix}cubcalc_indices 
    WHERE estado = %s AND tipo_obra IN ('CAL-8', 'CSL-8', 'CSL-16')",
    $estado
));
?>

<div class="wrap cubcalc-admin">
    <h1><?php printf(esc_html__('Editando %s', 'cubcalc'), $estado) ?></h1>
    
    <form method="post" action="<?php echo esc_url(admin_url('admin-post.php')) ?>">
        <input type="hidden" name="action" value="cubcalc_save">
        <?php wp_nonce_field('cubcalc_nonce') ?>
        <input type="hidden" name="estado" value="<?php echo esc_attr($estado) ?>">

        <div class="postbox">
            <h2><?php echo esc_html($estado) ?> - <?php echo esc_html(Cubcalc_Admin_Menus::get_nome_estado($estado)) ?></h2>
            
            <div class="form-group">
                <label><?php esc_html_e('SINDUSCON de Referência:', 'cubcalc') ?></label>
                <input type="text" name="sinduscon" value="<?php echo esc_attr($dados[0]->sinduscon_referencia) ?>" required>
            </div>

            <?php foreach (['CAL-8', 'CSL-8', 'CSL-16'] as $tipo) : 
                $valores = array_filter($dados, fn($item) => $item->tipo_obra === $tipo);
            ?>
                <div class="tipo-obra">
                    <h3><?php echo esc_html($tipo) ?></h3>
                    <table class="form-table">
                        <?php foreach ($valores as $valor) : ?>
                            <tr>
                                <th><?php echo esc_html(ucfirst($valor->padrao)) ?></th>
                                <td>
                                    <input type="text" 
                                        name="valores[<?php echo esc_attr($tipo) ?>][<?php echo esc_attr($valor->padrao) ?>]" 
                                        value="<?php echo esc_attr(number_format($valor->custo, 2, ',', '')) ?>"
                                        class="cubcalc-money">
                                    <input type="hidden" 
                                        name="ids[<?php echo esc_attr($tipo) ?>][<?php echo esc_attr($valor->padrao) ?>]" 
                                        value="<?php echo esc_attr($valor->id) ?>">
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