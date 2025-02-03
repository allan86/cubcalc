<?php
if (!defined('ABSPATH')) {
    exit;
}

class Cubcalc_Ajax_Handler {
    public static function init() {
        add_action('wp_ajax_cubcalc_calcular', [__CLASS__, 'handle_calculo']);
        add_action('wp_ajax_nopriv_cubcalc_calcular', [__CLASS__, 'handle_calculo']);
        add_action('wp_ajax_cubcalc_get_tipos', [__CLASS__, 'get_tipos_obra']);
        add_action('wp_ajax_nopriv_cubcalc_get_tipos', [__CLASS__, 'get_tipos_obra']);
    }

    public static function handle_calculo() {
        check_ajax_referer('cubcalc_nonce', 'nonce');
        
        // ... (Lógica de cálculo)
    }

    public static function get_tipos_obra() {
        check_ajax_referer('cubcalc_nonce', 'nonce');
        
        global $wpdb;
        $estado = sanitize_text_field($_POST['estado']);
        $categoria = sanitize_text_field($_POST['categoria']);

        $tipos = $wpdb->get_col($wpdb->prepare(
            "SELECT DISTINCT tipo_obra FROM {$wpdb->prefix}cubcalc_indices 
            WHERE estado = %s 
            AND tipo_obra LIKE %s 
            AND custo > 0",
            $estado,
            $categoria == 'residencial' ? 'R%' : ($categoria == 'comercial' ? 'C%' : 'GI')
        ));

        wp_send_json_success($tipos);
    }
	
	
	public static function get_tipos() {
    check_ajax_referer('cubcalc_nonce', 'nonce');
    
    global $wpdb;
    $estado = sanitize_text_field($_POST['estado']);
    $categoria = sanitize_text_field($_POST['categoria']);

    $resultados = $wpdb->get_results($wpdb->prepare(
        "SELECT DISTINCT tipo_obra 
        FROM {$wpdb->prefix}cubcalc_indices 
        WHERE estado = %s 
        AND tipo_obra IN ('R1', 'R8', 'PP4') 
        AND custo > 0 
        ORDER BY tipo_obra",
        $estado
    ));

    $tipos = wp_list_pluck($resultados, 'tipo_obra');
    wp_send_json_success($tipos);
	}
	
	
	
	
	public static function get_padroes() {
    check_ajax_referer('cubcalc_nonce', 'nonce');
    
    global $wpdb;
    $estado = sanitize_text_field($_POST['estado']);
    $tipo_obra = sanitize_text_field($_POST['tipo_obra']);

    $resultados = $wpdb->get_results($wpdb->prepare(
        "SELECT DISTINCT padrao 
        FROM {$wpdb->prefix}cubcalc_indices 
        WHERE estado = %s 
        AND tipo_obra = %s 
        AND custo > 0 
        ORDER BY FIELD(padrao, 'padrao_baixo', 'padrao_normal', 'padrao_alto')",
        $estado,
        $tipo_obra
    ));

    $padroes = wp_list_pluck($resultados, 'padrao');
    wp_send_json_success($padroes);
	}
	
	
	
}