jQuery(document).ready(function($) {
    // Lógica de edição rápida
    $('.cubcalc-edit-trigger').on('click', function(e) {
        e.preventDefault();
        const $row = $(this).closest('tr');
        $row.find('.view-mode, .edit-mode').toggle();
    });

    // Validação de valores monetários
    $('input.cubcalc-money').on('blur', function() {
        let valor = $(this).val().replace(/[^0-9,]/g, '');
        valor = parseFloat(valor.replace(',', '.')).toFixed(2);
        $(this).val(valor.replace('.', ','));
    });
});