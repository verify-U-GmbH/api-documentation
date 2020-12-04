import { init } from './content-nav'

export default () => {
  document
    .querySelectorAll(`.sidenav [href='${window.location.pathname}']`)
    .forEach(x => {
      x.classList.add('active')
    })

  init()

  // let prevScrollpos = window.pageYOffset

  // window.onscroll = () => {
  //   let currentScrollPos = window.pageYOffset
  //   if (currentScrollPos == 0  ) {
  //     document.getElementById("navbar").style.top = "0"
  //     document.getElementById("sidenav").style.top = "60px"
  //   } else {
  //     document.getElementById("navbar").style.top = "-60px"
  //     document.getElementById("sidenav").style.top = "0"
  //   }
  //   prevScrollpos = currentScrollPos
  // }
}
