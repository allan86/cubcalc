<?php
if (!defined('ABSPATH')) {
    exit;
}

class Cubcalc_Counter {
    public static function init() {
        add_action('cubcalc_after_calculo', [__CLASS__, 'registrar_log'], 10, 4);
    }

    public static function registrar_log($tipo_obra, $estado, $area, $ip) {
        global $wpdb;
        $wpdb->insert($wpdb->prefix . 'cubcalc_logs', [
            'tipo_obra' => $tipo_obra,
            'estado' => $estado,
            'area' => $area,
            'ip' => $ip,
            'data_calculo' => current_time('mysql')
        ]);
    }
}