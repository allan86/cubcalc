<?php
global $wpdb, $dados;
$estado = isset($_GET['edit']) ? sanitize_text_field($_GET['edit']) : '';
$dados = $wpdb->get_results($wpdb->prepare(
    "SELECT * FROM {$wpdb->prefix}cubcalc_indices 
    WHERE estado = %s AND tipo_obra = 'GI'",
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

            <div class="tipo-obra">
                <h3>GI - Galpão Industrial</h3>
                <table class="form-table">
                    <tr>
                        <th><?php esc_html_e('Normal', 'cubcalc') ?></th>
                        <td>
                            <input type="text" 
                                name="valores[GI][normal]" 
                                value="<?php echo esc_attr(number_format($dados[0]->custo, 2, ',', '')) ?>"
                                class="cubcalc-money">
                            <input type="hidden" 
                                name="ids[GI][normal]" 
                                value="<?php echo esc_attr($dados[0]->id) ?>">
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <?php submit_button(__('Salvar Alterações', 'cubcalc')) ?>
        <a href="<?php echo esc_url(remove_query_arg('edit')) ?>" class="button">
            <?php esc_html_e('Cancelar', 'cubcalc') ?>
        </a>
    </form>
</div>