<div class="cubcalc-form">
    <form method="post">
        <div class="form-group">
            <label><?php esc_html_e('Estado', 'cubcalc') ?></label>
            <select name="estado" required>
                <option value=""><?php esc_html_e('Selecione', 'cubcalc') ?></option>
                <?php foreach (Cubcalc_Calculator::get_estados_validos('galpao') as $sigla) : ?>
                    <option value="<?php echo esc_attr($sigla) ?>">
                        <?php echo esc_html($sigla . ' - ' . Cubcalc_Admin_Menus::get_nome_estado($sigla)) ?>
                    </option>
                <?php endforeach; ?>
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