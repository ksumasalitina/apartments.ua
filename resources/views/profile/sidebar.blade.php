@section('sidebar')
    <div style="margin-left: 20px">
        <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px;">
            <span class="fs-4">Профіль</span>
            <hr>
            <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item">
                    <svg class="bi pe-none me-2" width="16" height="16"></svg>
                    @if(Request::is('account/profile'))
                    <a href="{{route('profile')}}" class="nav-link active" aria-current="page">Особиста іформація</a>
                    @else
                        <a href="{{route('profile')}}" class="nav-link link-dark" aria-current="page">Особиста іформація</a>
                    @endif
                </li>
                <li>
                    @if(Request::is('account/bookings'))
                    <a href="{{route('bookings')}}" class="nav-link active" aria-current="page">
                        <svg class="bi pe-none me-2" width="16" height="16"></svg>Бронювання</a>
                        @else
                            <a href="{{route('bookings')}}" class="nav-link link-dark" aria-current="page">
                                <svg class="bi pe-none me-2" width="16" height="16"></svg>Бронювання</a>
                    @endif
                </li>
                <li>
                    @if(Request::is('account/favorites'))
                    <a href="{{route('favorites')}}" class="nav-link active" aria-current="page">
                        <svg class="bi pe-none me-2" width="16" height="16"></svg>Вподобання</a>
                    @else
                        <a href="{{route('favorites')}}" class="nav-link link-dark" aria-current="page">
                            <svg class="bi pe-none me-2" width="16" height="16"></svg>Вподобання</a>
                    @endif
                </li>
                <li>
                    @if(Request::is('account/reviews'))
                        <a href="{{route('reviews')}}" class="nav-link active" aria-current="page">
                            <svg class="bi pe-none me-2" width="16" height="16"></svg>Відгуки</a>
                    @else
                        <a href="{{route('reviews')}}" class="nav-link link-dark" aria-current="page">
                            <svg class="bi pe-none me-2" width="16" height="16"></svg>Відгуки</a>
                    @endif
                </li>
                <li><a class="dropdown-item" href="{{route('logout')}}">Sign out</a></li>
            </ul>
        </div>
    </div>

@show
