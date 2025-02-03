<?php
global $wpdb;

// Buscar estados com dados válidos
$estados = $wpdb->get_col(
    "SELECT DISTINCT estado 
    FROM {$wpdb->prefix}cubcalc_indices 
    WHERE tipo_obra IN ('R1', 'R8', 'PP4') 
    AND custo > 0 
    ORDER BY estado"
);
?>

<div class="cubcalc-form cubcalc-residencial">
    <form method="post">
        <div class="form-group">
            <label><?php esc_html_e('Estado', 'cubcalc') ?></label>
            <select name="estado" required>
                <option value=""><?php esc_html_e('Selecione', 'cubcalc') ?></option>
                <?php foreach ($estados as $sigla) : ?>
                    <option value="<?php echo esc_attr($sigla) ?>">
                        <?php echo esc_html($sigla . ' - ' . Cubcalc_Admin_Menus::get_nome_estado($sigla)) ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>

        <div class="form-group">
            <label><?php esc_html_e('Tipo de Obra', 'cubcalc') ?></label>
            <select name="tipo_obra" required disabled>
                <option value=""><?php esc_html_e('Selecione o estado primeiro', 'cubcalc') ?></option>
            </select>
        </div>

        <div class="form-group">
            <label><?php esc_html_e('Padrão', 'cubcalc') ?></label>
            <select name="padrao" required disabled>
                <option value=""><?php esc_html_e('Selecione o tipo primeiro', 'cubcalc') ?></option>
            </select>
        </div>

        <div class="form-group">
            <label><?php esc_html_e('Área (m²)', 'cubcalc') ?></label>
            <input type="number" name="area" step="0.01" required>
        </div>

        <button type="submit"><?php esc_html_e('Calcular', 'cubcalc') ?></button>
    </form>

    <div class="cubcalc-result"></div>
</div>