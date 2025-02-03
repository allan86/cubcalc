<div class="wrap">
    <h1><?php esc_html_e('Resetar Dados', 'cubcalc') ?></h1>
    
    <div class="card">
        <h2><?php esc_html_e('Atenção!', 'cubcalc') ?></h2>
        <form method="post" action="<?php echo esc_url(admin_url('admin-post.php')) ?>">
            <?php wp_nonce_field('cubcalc_reset_nonce') ?>
            <input type="hidden" name="action" value="cubcalc_reset">
            
            <p><?php esc_html_e('Esta ação é irreversível. Todos os dados serão resetados para valores padrão.', 'cubcalc') ?></p>
            
            <p>
                <label><?php esc_html_e('Senha de confirmação:', 'cubcalc') ?></label><br>
                <input type="password" name="senha_reset" required>
            </p>
            
            <?php submit_button(__('Confirmar Reset Total', 'cubcalc'), 'delete') ?>
        </form>
    </div>
</div>