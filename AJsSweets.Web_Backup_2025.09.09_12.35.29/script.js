document.addEventListener('DOMContentLoaded', () => {
    const cartItems = document.querySelectorAll('.cart-item');
    const totalPriceElement = document.getElementById('total-price');
    const checkoutButton = document.getElementById('checkout');

    function updateTotalPrice() {
        let total = 0;
        cartItems.forEach(item => {
            const quantity = item.querySelector('.quantity').value;
            const price = parseFloat(item.querySelector('.price').textContent.replace('$', ''));
            total += quantity * price;
        });
        totalPriceElement.textContent = total.toFixed(2);
    }

    cartItems.forEach(item => {
        item.querySelector('.quantity').addEventListener('change', updateTotalPrice);
        item.querySelector('.remove').addEventListener('click', () => {
            item.remove();
            updateTotalPrice();
        });
    });

    checkoutButton.addEventListener('click', () => {
        alert('Proceeding to checkout');
    });

    updateTotalPrice();
});
