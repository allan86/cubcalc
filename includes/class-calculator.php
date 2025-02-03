<?php
if (!defined('ABSPATH')) {
    exit;
}

class Cubcalc_Calculator {
    public static function calcular_custo($tipo_obra, $estado, $padrao, $area) {
        global $wpdb;
        
        $custo = $wpdb->get_var($wpdb->prepare(
            "SELECT custo FROM {$wpdb->prefix}cubcalc_indices 
            WHERE tipo_obra = %s 
            AND estado = %s 
            AND padrao = %s",
            $tipo_obra, $estado, $padrao
        ));

        return $custo ? ($custo * floatval($area)) : 0;
    }
}