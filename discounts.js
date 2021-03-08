function findLowestPrice(products, discounts) {
  let cost = 0;
  products.forEach((product) => {
    for (let i = 0; i < product.length(); i++) {
      if (product[i] == 'EMPTY') {
      } else {
      }
    }

    produc.forEach((element) => {});
  });
}

function discountHash(discounts, d) {}

products = [
  ['10', 'sale', 'january-sale'],
  ['200', 'sale', 'EMPTY'],
  ['200', 'another-sale'],
];
discounts = [
  ['sale', '0', '10'],
  ['january-sale', '1', '10'],
  ['another-sale', '2', '100'],
];

console.log(findLowestPrice(products, discounts));
