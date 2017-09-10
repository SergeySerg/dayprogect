@extends('ws-app')
@section('page')
    <div class="block-content block_subject">
        <div class="news-text">
            <h2 class="news-text_name">{{ $static_page->getTranslate('title') }}</h2>
            <div class="news-text_description">{!! $static_page->getTranslate('description') !!}</div>
            <a href="/{{ App::getLocale() }}#contact" class="order">{{ trans('base.order')}}</a>
        </div>
        <div class="news-img">
            @foreach($static_page->getImages() as $imgSrc)
                <div class="img-wrap" style="background-image: url('/{{ $imgSrc['full'] }}')" alt=""></div>
            @endforeach
        </div>
    </div>
@endsection