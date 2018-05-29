import Slider from 'bootstrap-slider';
import 'bootstrap-slider/dist/css/bootstrap-slider';

// const element = document.querySelector('#user_ranking')
// if (element) {
//   new Slider(element, {
//     min: 1,
//     max: 5
//     // la liste des options >> https://github.com/seiyria/bootstrap-slider
//   });
// }


const radius = document.querySelector('#user_search_radius')
if (radius) {
  new Slider(radius, {
    min: 0,
    max: 50
    // la liste des options >> https://github.com/seiyria/bootstrap-slider
  });
}

export default Slider;
