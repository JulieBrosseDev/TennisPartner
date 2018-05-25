import { Stack } from "swing";
function initSwing() {
  document.addEventListener("DOMContentLoaded", function() {
    const stack = new Stack();
    const cards = document.querySelectorAll(".stack li");

    const cleanCard = (e) => {
      stack.getCard(e.target).destroy()
      e.target.classList.remove("in-deck");
      e.target.classList.add("hidden");
    }

    const callBackEnd = (action) => {
      console.log('Je fais un call ajax pour' + action)
    }

    cards.forEach(card => {
      stack.createCard(card);
      card.classList.add("in-deck");
    });

    stack.on("throwoutleft", function(e) {
      console.log('je dislike')
      callBackEnd('dislike')
      const dislikeBtn = document.getElementById("dislike");
      dislikeBtn.click();

      cleanCard(e)
    });

    stack.on("throwoutright", function(e) {
      console.log('je like')
      callBackEnd('like')
      const index = e.target.dataset.index;
      console.log(e);
      const likeBtn = document.getElementById(`like-${index}`);
      likeBtn.click();
      cleanCard(e)
    });
  });
}

export { initSwing };
