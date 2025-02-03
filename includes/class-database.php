<?php
if (!defined('ABSPATH')) {
    exit;
}

class Cubcalc_Database {
    public static function create_tables() {
        global $wpdb;
        $charset = $wpdb->get_charset_collate();

        // Tabela de índices
        $table_indices = $wpdb->prefix . 'cubcalc_indices';
        $sql = "CREATE TABLE $table_indices (
            id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
            estado char(2) NOT NULL,
            tipo_obra varchar(50) NOT NULL,
            padrao varchar(20) NOT NULL,
            custo decimal(10,2) NOT NULL DEFAULT 0.00,
            mes varchar(20) NOT NULL,
            ano int(4) NOT NULL,
            sinduscon_referencia varchar(50) NOT NULL,
            descricao text NOT NULL,
            PRIMARY KEY (id)
        ) $charset;";

        // Tabela de logs
        $table_logs = $wpdb->prefix . 'cubcalc_logs';
        $sql_logs = "CREATE TABLE $table_logs (
            id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
            tipo_obra varchar(50) NOT NULL,
            estado char(2) NOT NULL,
            area decimal(10,2) NOT NULL,
            ip varchar(45) NOT NULL,
            data_calculo datetime NOT NULL,
            PRIMARY KEY (id)
        ) $charset;";

        require_once ABSPATH . 'wp-admin/includes/upgrade.php';
        dbDelta($sql);
        dbDelta($sql_logs);

        self::populate_initial_data();
    }

    public static function populate_initial_data() {
        global $wpdb;
        $table = $wpdb->prefix . 'cubcalc_indices';

        $estados = [
            'AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO',
            'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI',
            'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'
        ];

        $tipos = [
            'residencial' => [
                'R1'  => ['baixo', 'normal', 'alto'],
                'R8'  => ['baixo', 'normal', 'alto'],
                'PP4' => ['baixo', 'normal', 'alto']
            ],
            'comercial' => [
                'CAL-8'  => ['normal', 'alto'],
                'CSL-8'  => ['normal', 'alto'],
                'CSL-16' => ['normal', 'alto']
            ],
            'galpao' => [
                'GI' => ['normal']
            ]
        ];

        $meses = [
            'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
            'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'
        ];

        $mes_ref = $meses[date('n') - 1];
        $ano_ref = date('Y');

        foreach ($estados as $estado) {
            foreach ($tipos as $categoria => $subtipos) {
                foreach ($subtipos as $tipo => $padroes) {
                    foreach ($padroes as $padrao) {
                        $existe = $wpdb->get_var($wpdb->prepare(
                            "SELECT COUNT(*) FROM $table 
                            WHERE estado = %s 
                            AND tipo_obra = %s 
                            AND padrao = %s",
                            $estado, $tipo, $padrao
                        ));

                        if (!$existe) {
                            $wpdb->insert($table, [
                                'estado' => $estado,
                                'tipo_obra' => $tipo,
                                'padrao' => $padrao,
                                'custo' => 0.00,
                                'mes' => $mes_ref,
                                'ano' => $ano_ref,
                                'sinduscon_referencia' => 'SINDUSCON/' . strtoupper($estado),
                                'descricao' => 'Cadastro inicial - Editar'
                            ], ['%s','%s','%s','%f','%s','%d','%s','%s']);
                        }
                    }
                }
            }
        }
    }

    public static function on_uninstall() {
        global $wpdb;
        $wpdb->query("DROP TABLE IF EXISTS {$wpdb->prefix}cubcalc_indices");
        $wpdb->query("DROP TABLE IF EXISTS {$wpdb->prefix}cubcalc_logs");
    }
}

class Cubcalc_Constants {
    const PADROES = [
        'padrao_baixo' => 'Baixo',
        'padrao_normal' => 'Normal',
        'padrao_alto' => 'Alto'
    ];
}