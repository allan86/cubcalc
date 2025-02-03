<?php
if (!defined('ABSPATH')) {
    exit;
}

class Cubcalc_Admin_Menus {
    public static function init() {
        add_action('admin_menu', [__CLASS__, 'add_menus']);
        add_action('admin_post_cubcalc_save', [__CLASS__, 'handle_save']);
        add_action('admin_post_cubcalc_reset', [__CLASS__, 'handle_reset']);
    }

        public static function add_menus() {
        add_menu_page(
            'CUBCALC',
            'CUBCALC',
            'manage_options',
            'cubcalc',
            [__CLASS__, 'render_main_page'],
            'dashicons-calculator',
            6
        );

        add_submenu_page(
            'cubcalc',
            'Residencial',
            'Residencial',
            'manage_options',
            'cubcalc-residencial',
            [__CLASS__, 'render_residencial_page']
        );

        add_submenu_page(
            'cubcalc',
            'Comercial',
            'Comercial',
            'manage_options',
            'cubcalc-comercial',
            [__CLASS__, 'render_comercial_page']
        );

        add_submenu_page(
            'cubcalc',
            'Galpão',
            'Galpão',
            'manage_options',
            'cubcalc-galpao',
            [__CLASS__, 'render_galpao_page']
        );

        add_submenu_page(
            'cubcalc',
            'Resetar Dados',
            'Resetar Dados',
            'manage_options',
            'cubcalc-reset',
            [__CLASS__, 'render_reset_page']
        );
    }

	/**
     * Formata um valor numérico como moeda brasileira
     *
     * @param float|string $valor Valor a ser formatado
     * @return string Valor formatado (ex: R$ 1.234,56)
     */
    public static function formatar_moeda($valor) {
        return 'R$ ' . number_format_i18n((float) $valor, 2, ',', '.');
    }




    public static function render_residencial_page() {
    global $wpdb;

    // Verifica se estamos editando um estado
    if (isset($_GET['edit'])) {
        $estado = sanitize_text_field($_GET['edit']);
        $dados = $wpdb->get_results($wpdb->prepare(
            "SELECT * FROM {$wpdb->prefix}cubcalc_indices 
            WHERE estado = %s AND tipo_obra IN ('R1', 'R8', 'PP4')",
            $estado
        ));
        include CUBCALC_PLUGIN_DIR . 'templates/admin/edit-residencial.php';
    } else {
        // Listagem normal
        $dados = $wpdb->get_results(
            "SELECT * FROM {$wpdb->prefix}cubcalc_indices 
            WHERE tipo_obra IN ('R1', 'R8', 'PP4') 
            ORDER BY estado, tipo_obra"
        );
        include CUBCALC_PLUGIN_DIR . 'templates/admin/list-residencial.php';
    }
}

    public static function handle_save() {
        check_admin_referer('cubcalc_nonce');
        
        global $wpdb;
        $table = $wpdb->prefix . 'cubcalc_indices';
        $estado = sanitize_text_field($_POST['estado']);

        // Atualizar SINDUSCON
        $wpdb->update($table,
            ['sinduscon_referencia' => strtoupper(sanitize_text_field($_POST['sinduscon']))],
            ['estado' => $estado]
        );

        // Atualizar custos
        foreach ($_POST['valores'] as $tipo => $padroes) {
            foreach ($padroes as $padrao => $valor) {
                $wpdb->update($table,
                    ['custo' => floatval(str_replace(',', '.', $valor))],
                    [
                        'estado' => $estado,
                        'tipo_obra' => $tipo,
                        'padrao' => $padrao
                    ]
                );
            }
        }

        wp_redirect(admin_url('admin.php?page=cubcalc-residencial'));
        exit;
    }


	public static function get_nome_estado($sigla) {
        $estados = [
            'AC' => 'Acre', 'AL' => 'Alagoas', 'AP' => 'Amapá', 'AM' => 'Amazonas',
            'BA' => 'Bahia', 'CE' => 'Ceará', 'DF' => 'Distrito Federal', 'ES' => 'Espírito Santo',
            'GO' => 'Goiás', 'MA' => 'Maranhão', 'MT' => 'Mato Grosso', 'MS' => 'Mato Grosso do Sul',
            'MG' => 'Minas Gerais', 'PA' => 'Pará', 'PB' => 'Paraíba', 'PR' => 'Paraná',
            'PE' => 'Pernambuco', 'PI' => 'Piauí', 'RJ' => 'Rio de Janeiro', 'RN' => 'Rio Grande do Norte',
            'RS' => 'Rio Grande do Sul', 'RO' => 'Rondônia', 'RR' => 'Roraima', 'SC' => 'Santa Catarina',
            'SP' => 'São Paulo', 'SE' => 'Sergipe', 'TO' => 'Tocantins'
        ];

        return $estados[$sigla] ?? 'Estado Desconhecido';
    }



    // ... (Manter outros métodos)
}