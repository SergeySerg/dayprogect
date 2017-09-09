@extends('ws-app')
@section('page')
    <div class="block-content block_subject">
        <div class="project-item  news-item"  style="background-image: url('{{ asset( $static_page->getAttributeTranslate('Картинка предмета')) }}');">
            <div class="project-item_name news-item_name">
                <span class="project-item_name-text news-item_name-text">{{ $static_page->getTranslate('title') }}</span>
            </div>
        </div>
        <div id="project-carousel-s1" class="r-carousel-wrap">
            <div class="news-text">
                <h2 class="news-text_name">{{ $static_page->getTranslate('title') }}</h2>
                <div class="news-text_description">{!! $static_page->getTranslate('description') !!}</div>
                <button class="order">{{ trans('base.order')}}</button>
            </div>
            <div class="news-img">
                @foreach($static_page->getImages() as $imgSrc)
                    <div class="img-wrap" style="background-image: url('/{{ $imgSrc['full'] }}')" alt=""></div>
                @endforeach
            </div>
        </div>
    </div>
@endsection