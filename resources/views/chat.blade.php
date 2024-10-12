<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-4">
                <h1>User đang online</h1>
                <ul class="list-group" id="userOnline">

                </ul>
            </div>
            <div class="col-8">
                <span>Xin chào: {{ Auth::user()->name }}</span>
                <h1>Phòng chat: {{ $room->name }}</h1>
                <hr>
                <div class="contentBlock" style="min-height: 200px">
                    @foreach ($listMessage as $value)
                        <p @if ($value->user_send_id == Auth::id()) class="text-end" @endif>{{ $value->userSend->name }}:
                            {{ $value->content }}</p>
                    @endforeach
                </div>
                <hr>
                <div class="d-flex">
                    <input type="text" placeholder="Gửi tin nhắn..." class="form-control" id="inputMessage">
                    <button class="btn btn-success" id="btnSendMessage">Gửi</button>
                </div>
            </div>
        </div>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

    <script>
        let roomId = "{{ $room->id }}"
        let userSignIn = '{{ Auth::id() }}'
        let routeMessage = "{{ route('postChat', $room->id) }}"
    </script>

    @vite('resources/js/chat.js')
</body>

</html>
