@extends('ws-app')
@section('content')
    @if( count($company) !== 0 AND $categories_data['company']->active == 1)
        <div id="about" class="mob-block-content mob-block_about">
            <h2 class="mob-block_header mob-block_header-about">About us</h2>
            <div class="mob-about_desc">
                <p>День, який випромінює світло і тепло. День, який приносить задоволення.</p>
                <p>Це все ДЕНЬ project - проект вашого простору, в якому хочеться</p>
                <p>прокидатися, працювати, відпочивати.</p>
                <p>Функціональне, комфортне, практичне рішення вашого інтер'єру.</p>
                <p>Ми команда професіоналів, яка розуміє ваші потреби і втілює їх в життя.</p>
            </div>
        </div>
    @endif
@endsection