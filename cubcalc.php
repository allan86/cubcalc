<?php
/**
 * Plugin Name: CUBCALC
 * Plugin URI: https://ti.antoniengenharia.com
 * Description: Calculadora de custos de obras residenciais, comerciais e galpões com base no CUB.
 * Version: 1.0.0
 * Author: Antoni Eng.
 * Author URI: https://ti.antoniengenharia.com
 * Text Domain: cubcalc
 * Domain Path: /languages
 */

if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

// Definições básicas do plugin
define('CUBCALC_VERSION', '1.0.0');
define('CUBCALC_PLUGIN_DIR', plugin_dir_path(__FILE__));
define('CUBCALC_PLUGIN_URL', plugin_dir_url(__FILE__));
define('CUBCALC_BASENAME', plugin_basename(__FILE__));

// Carregar classes necessárias
require_once CUBCALC_PLUGIN_DIR . 'includes/class-database.php';
require_once CUBCALC_PLUGIN_DIR . 'includes/class-admin-menus.php';
require_once CUBCALC_PLUGIN_DIR . 'includes/class-calculator.php';
require_once CUBCALC_PLUGIN_DIR . 'includes/class-shortcodes.php';
require_once CUBCALC_PLUGIN_DIR . 'includes/class-ajax-handler.php';
require_once CUBCALC_PLUGIN_DIR . 'includes/class-counter.php';

// Registro de hooks de ativação/desinstalação
register_activation_hook(__FILE__, ['Cubcalc_Database', 'create_tables']);
register_uninstall_hook(__FILE__, ['Cubcalc_Database', 'on_uninstall']);

// Inicialização do plugin
add_action('plugins_loaded', 'cubcalc_init_plugin');

function cubcalc_init_plugin() {
    // Inicializar componentes
    Cubcalc_Admin_Menus::init();
    Cubcalc_Shortcodes::init();
    Cubcalc_Ajax_Handler::init();
    Cubcalc_Counter::init();

    // Carregar scripts e estilos
    add_action('wp_enqueue_scripts', 'cubcalc_enqueue_scripts');
    add_action('admin_enqueue_scripts', 'cubcalc_admin_scripts');
}

// Carregar scripts frontend
function cubcalc_enqueue_scripts() {
    wp_enqueue_script(
        'cubcalc-frontend',
        CUBCALC_PLUGIN_URL . 'assets/js/cubcalc-frontend.js',
        ['jquery'],
        CUBCALC_VERSION,
        true
    );

    wp_localize_script('cubcalc-frontend', 'cubcalc_vars', [
        'ajaxurl' => admin_url('admin-ajax.php'),
        'nonce' => wp_create_nonce('cubcalc_nonce'),
        'loading_text' => __('Calculando...', 'cubcalc'),
        'currency_symbol' => 'R$'
    ]);
}

// Carregar scripts admin
function cubcalc_admin_scripts($hook) {
    if (strpos($hook, 'cubcalc') !== false) {
        wp_enqueue_style(
            'cubcalc-admin',
            CUBCALC_PLUGIN_URL . 'assets/css/admin.css',
            [],
            CUBCALC_VERSION
        );
    }
}

// Internacionalização
add_action('init', 'cubcalc_load_textdomain');
function cubcalc_load_textdomain() {
    load_plugin_textdomain(
        'cubcalc',
        false,
        dirname(CUBCALC_BASENAME) . '/languages/'
    );
}

add_action('admin_menu', ['Cubcalc_Admin_Menus', 'add_menus']);