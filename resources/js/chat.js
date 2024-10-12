import './bootstrap'


let userOnline = document.querySelector("#userOnline")
window.Echo.join('chat.' + roomId)
    .here(users => {
        let UI = ''
        users.forEach(user => {
            if (userSignIn != user.id) {
                UI += `<li class="list-group-item user-${user.id}">${user.name}</li>`
            }
        })
        userOnline.insertAdjacentHTML('beforebegin', UI)
    })
    .joining(user => {
        let UI = `<li class="list-group-item user-${user.id}">${user.name}</li>`
        userOnline.insertAdjacentHTML('beforebegin', UI)
        alert(`User: ${user.name} vừa vào phòng chat`)
    })
    .leaving(user => {
        let userDom = document.querySelector(`.user-${user.id}`)
        if (userDom) {
            userDom.remove()
        }
        alert(`User: ${user.name} vừa thoát phòng chat`)
    })
    .listen('ChatEvent', function (event) {
        // console.log(event);
        updateUiMessage(event)
    })



let btnSendMessage = document.querySelector('#btnSendMessage')
let inputMessage = document.querySelector("#inputMessage")

btnSendMessage.addEventListener('click', function () {
    let message = inputMessage.value
    window.axios.post(routeMessage, { message })
        .then(function (response) {
            if (response.data.log == 'success') {
                inputMessage.value = ""
            }
        })
})


let contentBlock = document.querySelector('.contentBlock')
function updateUiMessage(event) {
    let classAuth = event.user_send_id == userSignIn ? "text-end" : ""
    let UI = `
        <p class="${classAuth}">${event.userName}: ${event.content}</p>
    `
    contentBlock.insertAdjacentHTML('beforeend', UI)
}
