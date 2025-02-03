jQuery(document).ready(function($) {
    // Cálculo dinâmico
    $('.cubcalc-form').on('submit', function(e) {
        e.preventDefault();
        const $form = $(this);
        const $result = $form.find('.cubcalc-result');
        
        $result.hide().html('<p class="loading">' + cubcalc_vars.loading_text + '</p>').show();

        $.ajax({
            url: cubcalc_vars.ajaxurl,
            type: 'POST',
            data: {
                action: 'cubcalc_calcular',
                nonce: cubcalc_vars.nonce,
                dados: $form.serialize()
            },
            success: function(response) {
                if (response.success) {
                    const html = `
                        <p><strong>Tipo:</strong> ${response.data.tipo}</p>
                        <p><strong>Padrão:</strong> ${response.data.padrao}</p>
                        <p><strong>Valor:</strong> ${cubcalc_vars.currency_symbol} ${response.data.valor}</p>
                    `;
                    $result.html(html).show();
                } else {
                    $result.html('<p class="error">Erro no cálculo. Tente novamente.</p>').show();
                }
            }
        });
    });

    // Filtragem em cascata
    $('.cubcalc-form').on('change', 'select[name="estado"]', function() {
        const estado = $(this).val();
        const $tipoSelect = $('select[name="tipo_obra"]').html('<option>Carregando...</option>').prop('disabled', true);
        
        $.post(cubcalc_vars.ajaxurl, {
            action: 'cubcalc_get_tipos',
            nonce: cubcalc_vars.nonce,
            estado: estado,
            categoria: 'residencial'
        }, function(response) {
            if (response.success) {
                let options = '<option value="">Selecione o Tipo</option>';
                response.data.forEach(function(tipo) {
                    options += `<option value="${tipo}">${tipo}</option>`;
                });
                $tipoSelect.html(options).prop('disabled', false);
            }
        });
    });
});