import _ from 'lodash'
import AnchorJS from 'anchor-js'

const template = `
  <div class="fixed">
    <h5 class="text-gray-500 uppercase tracking-wide font-bold text-sm lg:text-xs">On this page</h5>
    <ul class="mt-4 overflow-x-hidden" v-if="links.length > 0">
      <% _.forEach(links, function(link) { %>
       
      <li class="mb-1">
          <a href="<%= link.href %>" 
             class="block transition-fast text-gray-600 hover:text-blue-600 text-sm">
             <%= link.text %>
          </a>
      </li>
      <% }); %> 
    </ul>
  </div>
`

function getHeadingText (element) {
  let text = ''
  for (let i = 0; i < element.childNodes.length; ++i) {
    if (element.childNodes[i].nodeType === 3) {
      text += element.childNodes[i].textContent

      // If there's a data-heading-text attribute, use the direct child text from that
    } else if (element.childNodes[i].dataset && ('headingText' in element.childNodes[i].dataset)) {
      // Assume the element has a text node as its first child and only use the content from that.
      // This is to intentionally exclude any nested <span> stuff from the sidebar, like "(optional)".
      text += element.childNodes[i].childNodes[0].textContent
    }
  }
  return text
}

export function init () {
  const anchors = new AnchorJS()
  anchors.options = { placement: 'left', class: 'text-gray-500 no-underline', icon: '#' }
  anchors.add('h3')
  const links =
        anchors.elements.map(el => {
          return {
            text: getHeadingText(el),
            href: el.querySelector('.anchorjs-link').getAttribute('href'),
            el: el
          }
        })

  if (links.length) {
    document.getElementById('content-nav').innerHTML =
            _.template(template)({ links: links })
  }
}
