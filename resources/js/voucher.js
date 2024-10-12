import './bootstrap';

window.Echo.channel('broadcast-voucher')
    .listen('VoucherEvent', function (event) {
        //console.log(event)
        alert(`Voucher: ${event.name} - description: ${event.description} - discount: ${event.discount}`)
    })
