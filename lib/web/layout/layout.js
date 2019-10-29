export default () => {
  document
    .querySelectorAll(`.sidenav [href='${window.location.pathname}']`)
    .forEach(x => {
      x.classList.add('active')
    })
}
