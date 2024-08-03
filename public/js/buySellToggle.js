// js/buySellToggle.js

// Function to change the number of stocks bought
function changeBuyNum(amount) {
    // Example logic: Update a variable or UI element with the chosen amount
    console.log(`Buying ${amount} stocks`);
    // Implement the actual logic to update the number of stocks bought
  }
  
  // Function to change the number of stocks sold
  function changeSellNum(amount) {
    // Example logic: Update a variable or UI element with the chosen amount
    console.log(`Selling ${amount} stocks`);
    // Implement the actual logic to update the number of stocks sold
  }
  
  // Event listeners for the buy/sell buttons
  document.querySelectorAll('.stockSidePanelButtonBuy').forEach(button => {
    button.addEventListener('click', () => {
      const amount = parseInt(button.textContent, 10);
      changeBuyNum(amount);
    });
  });
  
  document.querySelectorAll('.stockSidePanelButtonSell').forEach(button => {
    button.addEventListener('click', () => {
      const amount = parseInt(button.textContent, 10);
      changeSellNum(amount);
    });
  });
  