<div class="wrap">
    <h1><?php esc_html_e('Relatório de Cálculos', 'cubcalc') ?></h1>
    
    <table class="wp-list-table widefat fixed striped">
        <thead>
            <tr>
                <th><?php esc_html_e('Data', 'cubcalc') ?></th>
                <th><?php esc_html_e('Tipo', 'cubcalc') ?></th>
                <th><?php esc_html_e('Estado', 'cubcalc') ?></th>
                <th><?php esc_html_e('Área (m²)', 'cubcalc') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($logs as $log) : ?>
            <tr>
                <td><?php echo esc_html(date_i18n('d/m/Y H:i', strtotime($log->data_calculo))) ?></td>
                <td><?php echo esc_html($log->tipo_obra) ?></td>
                <td><?php echo esc_html($log->estado) ?></td>
                <td><?php echo number_format_i18n($log->area, 2) ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>