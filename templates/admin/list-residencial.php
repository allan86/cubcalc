<?php
global $wpdb;

$estado_filtro = isset($_GET['estado_filtro']) ? sanitize_text_field($_GET['estado_filtro']) : '';
?>

<div class="wrap cubcalc-admin">
    <h1><?php esc_html_e('Configurações Residenciais', 'cubcalc') ?></h1>

    <!-- Filtro por Estado -->
    <form method="get" action="">
        <input type="hidden" name="page" value="cubcalc-residencial">
        <label for="estado_filtro"><?php esc_html_e('Filtrar por Estado:', 'cubcalc') ?></label>
        <select name="estado_filtro" onchange="this.form.submit()">
            <option value=""><?php esc_html_e('Todos', 'cubcalc') ?></option>
            <?php
            $estados = $wpdb->get_col("SELECT DISTINCT estado FROM {$wpdb->prefix}cubcalc_indices ORDER BY estado");
            foreach ($estados as $estado) :
            ?>
                <option value="<?php echo esc_attr($estado) ?>" <?php selected($estado_filtro, $estado) ?>>
                    <?php echo esc_html($estado . ' - ' . Cubcalc_Admin_Menus::get_nome_estado($estado)) ?>
                </option>
            <?php endforeach; ?>
        </select>
    </form>

    <?php
    // Consulta com filtro
    $sql = "SELECT * FROM {$wpdb->prefix}cubcalc_indices 
            WHERE tipo_obra IN ('R1', 'R8', 'PP4')";
    if ($estado_filtro) {
        $sql .= $wpdb->prepare(" AND estado = %s", $estado_filtro);
    }
    $sql .= " ORDER BY estado, tipo_obra, padrao";
    $dados = $wpdb->get_results($sql);

    // Debug: Verifique os dados brutos
    // echo '<pre>'; print_r($dados); echo '</pre>';

    // Agrupa os dados corretamente
    $dados_agrupados = [];
    foreach ($dados as $item) {
        $dados_agrupados[$item->estado][$item->tipo_obra][$item->padrao] = $item;
    }

    foreach ($dados_agrupados as $estado => $tipos) :
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
                <!-- SINDUSCON -->
                <p><strong><?php esc_html_e('Referencia:', 'cubcalc') ?></strong> 
                    <?php echo esc_html($tipos['R1']['padrao_baixo']->sinduscon_referencia ?? 'Não informado') ?>
                </p>

                <!-- Valores -->
                <?php foreach (['R1', 'R8', 'PP4'] as $tipo) : ?>
                    <?php if (isset($tipos[$tipo])) : ?>
                        <div class="tipo-obra">
                            <h3><?php echo esc_html($tipo) ?></h3>
                            <div class="valores-linha">
                                <?php foreach (['padrao_baixo', 'padrao_normal', 'padrao_alto'] as $padrao) : ?>
                                    <?php $valor = $tipos[$tipo][$padrao] ?? null; ?>
                                    <div class="valor-item">
                                        <span class="label"><?php echo esc_html(ucfirst($padrao)) ?>:</span>
                                        <span class="valor">
                                            <?php if ($valor && $valor->custo > 0) : ?>
                                                <?php echo esc_html(Cubcalc_Admin_Menus::formatar_moeda($valor->custo)) ?>
                                            <?php else : ?>
                                                N/A
                                            <?php endif; ?>
                                        </span>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endif; ?>
                <?php endforeach; ?>
            </div>
        </div>
    <?php endforeach; ?>
</div>