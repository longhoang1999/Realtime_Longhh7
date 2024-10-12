import './bootstrap'

window.Echo.private('tasks.' + userSignIn)
    .listen('TaskAssigned', event => {
        console.log(event)
        alert(`Bạn vừa được giao một Task mới từ "${event.userSendName}": ${event.title}`)
    })


let formTask = document.querySelector('#form-task')
let taskNotification = document.querySelector(".task-notification")
formTask.addEventListener('submit', function (e) {
    e.preventDefault()

    let title = document.querySelector("#title")
    let description = document.querySelector("#description")
    let users = document.querySelector("#users")

    let dataTask = {
        'title': title.value,
        'description': description.value,
        'user_receive_id': users.value
    }

    axios.post('/task', dataTask)
        .then(response => {
            if (response.data.message == "success") {
                taskNotification.textContent = "Task đã được giao thành công"
                this.reset()
            } else {
                return Promise.reject(new Error("Task không thành công"));
            }
        })
        .catch(error => {
            console.log(error);
            taskNotification.textContent = "Có lỗi xảy ra vui lòng thử lại"
        })
})
