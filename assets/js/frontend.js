jQuery(document).ready(function($) {
    // Quando o estado muda
    $('.cubcalc-form').on('change', 'select[name="estado"]', function() {
        const $form = $(this).closest('.cubcalc-form');
        const estado = $(this).val();
        
        // Resetar selects dependentes
        $form.find('select[name="tipo_obra"], select[name="padrao"]')
            .prop('disabled', true)
            .html('<option value="">Carregando...</option>');

        // Buscar TIPOS DE OBRA
        $.post(cubcalc_vars.ajaxurl, {
            action: 'cubcalc_get_tipos',
            nonce: cubcalc_vars.nonce,
            estado: estado,
            categoria: 'residencial'
        }, function(response) {
            if (response.success && response.data.length > 0) {
                let options = '<option value="">Selecione o Tipo</option>';
                response.data.forEach(tipo => {
                    options += `<option value="${tipo}">${tipo}</option>`;
                });
                $form.find('select[name="tipo_obra"]').html(options).prop('disabled', false);
            }
        });
    });

    // Quando o tipo de obra muda (NOVO)
    $('.cubcalc-form').on('change', 'select[name="tipo_obra"]', function() {
        const $form = $(this).closest('.cubcalc-form');
        const estado = $form.find('select[name="estado"]').val();
        const tipo_obra = $(this).val();

        // Resetar o campo de padrão
        $form.find('select[name="padrao"]')
            .prop('disabled', true)
            .html('<option value="">Carregando...</option>');

        // Buscar PADRÕES
        $.post(cubcalc_vars.ajaxurl, {
            action: 'cubcalc_get_padroes',
            nonce: cubcalc_vars.nonce,
            estado: estado,
            tipo_obra: tipo_obra
        }, function(response) {
            if (response.success && response.data.length > 0) {
                let options = '<option value="">Selecione o Padrão</option>';
                response.data.forEach(padrao => {
                    // Remove "padrao_" e capitaliza
                    const label = padrao.replace('padrao_', '').charAt(0).toUpperCase() + padrao.replace('padrao_', '').slice(1);
                    options += `<option value="${padrao}">${label}</option>`;
                });
                $form.find('select[name="padrao"]').html(options).prop('disabled', false);
            } else {
                $form.find('select[name="padrao"]').html('<option value="">Nenhum padrão disponível</option>');
            }
        });
    });
});