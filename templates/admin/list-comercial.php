<?php
global $wpdb, $dados;
$estados = $wpdb->get_col("SELECT DISTINCT estado FROM {$wpdb->prefix}cubcalc_indices ORDER BY estado");
?>

<div class="wrap cubcalc-admin">
    <h1><?php esc_html_e('Configurações Comerciais', 'cubcalc') ?></h1>
    
    <?php foreach ($estados as $estado) : 
        $dados_estado = $wpdb->get_results($wpdb->prepare(
            "SELECT * FROM {$wpdb->prefix}cubcalc_indices 
            WHERE estado = %s AND tipo_obra IN ('CAL-8', 'CSL-8', 'CSL-16')",
            $estado
        ));
    ?>
        <div class="postbox">
            <div class="postbox-header">
                <h2>
                    <?php echo esc_html($estado) ?> - <?php echo esc_html(Cubcalc_Admin_Menus::get_nome_estado($estado)) ?>
                    <a href="<?php echo esc_url(add_query_arg('edit', $estado)) ?>" class="button-primary" style="float: right;">
                        <?php esc_html_e('Editar', 'cubcalc') ?>
                    </a>
                </h2>
            </div>
            <div class="inside">
                <p><strong><?php esc_html_e('SINDUSCON:', 'cubcalc') ?></strong> <?php echo esc_html($dados_estado[0]->sinduscon_referencia) ?></p>

                <?php foreach (['CAL-8', 'CSL-8', 'CSL-16'] as $tipo) : 
                    $valores = array_filter($dados_estado, fn($item) => $item->tipo_obra === $tipo);
                ?>
                    <div class="tipo-obra">
                        <h3><?php echo esc_html($tipo) ?></h3>
                        <div class="valores">
                            <?php foreach ($valores as $valor) : ?>
                                <div>
                                    <strong><?php echo esc_html(ucfirst($valor->padrao)) ?>:</strong><br>
                                    <?php echo esc_html(Cubcalc_Admin_Menus::formatar_moeda($valor->custo)) ?>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    <?php endforeach; ?>
</div>