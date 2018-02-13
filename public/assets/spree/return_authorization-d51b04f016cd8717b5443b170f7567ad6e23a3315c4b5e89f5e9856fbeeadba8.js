$(document).ready(function() {
  var formFields = $("[data-hook='admin_customer_return_form_fields'], \
                     [data-hook='admin_return_authorization_form_fields']");

  if(formFields.length > 0) {
    function checkAddItemBox() {
      $(this).closest('tr').find('input.add-item').attr('checked', 'checked');
      updateSuggestedAmount();
    }

    function updateSuggestedAmount() {
      var totalPretaxRefund = 0;
      var checkedItems = formFields.find('input.add-item:checked');
      $.each(checkedItems, function(i, checkbox) {
        totalPretaxRefund += parseFloat($(checkbox).parents('tr').find('.refund-amount-input').val());
      });

      var displayTotal = isNaN(totalPretaxRefund) ? '' : totalPretaxRefund.toFixed(2);
      formFields.find('span#total_pre_tax_refund').html(displayTotal);
    }

    updateSuggestedAmount();

    formFields.find('input#select-all').on('change', function(ev) {
      var checkBoxes = $(ev.currentTarget).parents('table:first').find('input.add-item');
      checkBoxes.prop('checked', this.checked);
      updateSuggestedAmount();
    });

    formFields.find('input.add-item').on('change', updateSuggestedAmount);
    formFields.find('.refund-amount-input').on('keyup', updateSuggestedAmount);

    formFields.find('input, select').not('.add-item').on('change', checkAddItemBox);
  }
});
function ReturnItemOptionsSelection() {
}

ReturnItemOptionsSelection.prototype.bindEvents = function() {
  this.hideExchangeOptionsDropdownForRefundItems();
  this.bindClickEventOnReturnOptionRadioButtons();
  this.bindCheckedEventOnLineItemsSelection();
}

ReturnItemOptionsSelection.prototype.bindCheckedEventOnLineItemsSelection = function() {
  var _this = this;
  $('input[type=checkbox]').on('change', function() {
    _this.updateSuggestedAmount();
  });
}

ReturnItemOptionsSelection.prototype.hideExchangeOptionsDropdownForRefundItems = function() {
  $('[value=refund]:checked').each(function() {
    $(this).closest('tr')
           .find('.return-item-exchange-selection')
           .val('')
           .hide();
  });
}

ReturnItemOptionsSelection.prototype.bindClickEventOnReturnOptionRadioButtons = function() {
  var _this = this;

  $('.return-options').on('change', function(event) {
    event.stopPropagation();

    var $exchangeDropdown = $(this).closest('tr')
                                   .find('.return-item-exchange-selection');

    _this.updateSuggestedAmount();

    if($(event.target).is('[value=refund]')) {
      $exchangeDropdown.val('').hide();
    } else if($(event.target).is('[value=exchange_for]')) {
      var defaultSelectedItem = $exchangeDropdown.find('option:first').val();
      $exchangeDropdown.val(defaultSelectedItem).show();
    }
  });
}

ReturnItemOptionsSelection.prototype.updateSuggestedAmount = function() {
  var totalPretaxRefund = 0;
  var formFields = $("[data-hook='admin_return_authorization_form_fields']");
  var checkedItems = formFields.find('input.add-item:checked');

  $.each(checkedItems, function(i, checkbox) {
    var $selectedItemRow = $(checkbox).parents('tr');

    if($selectedItemRow.find('.return-options:checked').is($('[value=exchange_for]'))) {
      return true;
    }

    totalPretaxRefund += parseFloat($selectedItemRow.find('.refund-amount-input').val());
  });

  var displayTotal = isNaN(totalPretaxRefund) ? '' : totalPretaxRefund.toFixed(2);
  formFields.find('span#total_pre_tax_refund').html(displayTotal);
}

$(document).ready(function() {
  new ReturnItemOptionsSelection().bindEvents();
});


