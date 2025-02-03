<?php
if (!defined('ABSPATH')) {
    exit;
}

class Cubcalc_Shortcodes {
    public static function init() {
        add_shortcode('CUBCALC-RESIDENCIAL', [__CLASS__, 'residencial']);
        add_shortcode('CUBCALC-COMERCIAL', [__CLASS__, 'comercial']);
        add_shortcode('CUBCALC-GALPAO', [__CLASS__, 'galpao']);
    }

    public static function residencial() {
        ob_start();
        include CUBCALC_PLUGIN_DIR . 'templates/frontend/calculator-residencial.php';
        return ob_get_clean();
    }

public static function comercial() {
        ob_start();
        include CUBCALC_PLUGIN_DIR . 'templates/frontend/calculator-comercial.php';
        return ob_get_clean();
    }
	
	public static function galpao() {
        ob_start();
        include CUBCALC_PLUGIN_DIR . 'templates/frontend/calculator-galpao.php';
        return ob_get_clean();
    }
    // ... (Implementar métodos comerciais e galpão)
}