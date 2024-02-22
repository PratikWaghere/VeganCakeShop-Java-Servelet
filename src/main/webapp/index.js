let navbar = document.querySelector('.navbar');
document.querySelector('#menu-bar').onclick=() =>{
    navbar.classList.toggle('active');
}



let search = document.querySelector('.search');
document.querySelector('#search').onclick=() =>{
    search.classList.toggle('active');
}


var swiper = new Swiper(".product-row", {
    spaceBetween: 30,
    loop:true,
    centeredSlides:true,
    autoplay:{
        delay:9500,
        disableOnInteraction:false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    breakpoints: {
      0: {
        slidesPerView: 1,
      },
      768: {
        slidesPerView: 2,
      },
      1024: {
        slidesPerView: 3,
      },
    },
  });
var swiper = new Swiper(".blogs-row", {
    spaceBetween: 30,
    loop:true,
    centeredSlides:true,
    autoplay:{
        delay:9500,
        disableOnInteraction:false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    navigation:{
        nextE1 :".swiper-button-next",
        prevE1 :".swiper-button-prev",
    },
    breakpoints: {
      0: {
        slidesPerView: 1,
      },
      768: {
        slidesPerView: 1,
      },
      1024: {
        slidesPerView: 1,
      },
    },
  });

  var swiper = new Swiper(".review-row", {
    spaceBetween: 30,
    loop:true,
    centeredSlides:true,
    autoplay:{
        delay:9500,
        disableOnInteraction:false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    breakpoints: {
      0: {
        slidesPerView: 1,
      },
      768: {
        slidesPerView: 2,
      },
      1024: {
        slidesPerView: 3,
      },
    },
  });

  // cart.js

// Initialize an empty cart array
let cart = [];

// Select all "Add to Cart" buttons
const addToCartButtons = document.querySelectorAll(".add-to-cart");

// Add click event listeners to each "Add to Cart" button
addToCartButtons.forEach((button, index) => {
    button.addEventListener("click", () => {
        // Get the product details (you can customize this part)
        const productName = document.querySelectorAll(".product-content h3")[index].textContent;
        const productDescription = document.querySelectorAll(".product-content p")[index].textContent;

        // Create a product object
        const product = {
            name: productName,
            description: productDescription,
        };

        // Add the product to the cart
        cart.push(product);

        // You can display a confirmation message or update the cart UI here
        console.log("Product added to cart:", product);
    });
});

function addToCart() {
    // You can add your logic for adding the item to the cart here.
    // For demonstration purposes, we'll just show a success message.
    
    // Find the success message element by ID
    const successMessage = document.getElementById("success-message");
    
    // Set the message content
    successMessage.textContent = "Item added to cart successfully!";
    
    // Optionally, you can add styling to the message
    successMessage.style.color = "green";
    successMessage.style.fontWeight = "bold";
    
    // Clear the message after a certain time (e.g., 3 seconds)
    setTimeout(function() {
        successMessage.textContent = "";
    }, 3000); // 3000 milliseconds (3 seconds)
}

function addToCart() {
  // Find the div and change its z-index value
  const cartItem = document.getElementById("cart-item");
  
  // Change the z-index value (e.g., set it to 1)
  cartItem.style.zIndex = "2";
  
  // Optionally, you can set a timeout to revert the z-index value after a certain time
  setTimeout(function() {
      cartItem.style.zIndex = "0"; // Change it back to its original value
  }, 2000); // Change it back after 2 seconds (adjust the time as needed)
}
