<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">
<head>
	<meta charset="utf-8">
	<title>{!! $company->getTranslate('meta_title') !!}</title>

	<meta name="description" content="{!! $company->getTranslate('meta_description') !!}">
	<meta name="keywords" content="{!! $company->getTranslate('meta_keywords') !!}">

	<link rel="shortcut icon" href="{{ asset('/favicon/favicon.ico') }}" type="image/x-icon">
	<link rel="apple-touch-icon" href="{{ asset('/favicon/apple-touch-icon.png') }}">
	<link rel="apple-touch-icon" sizes="72x72" href="{{ asset('/favicon/apple-touch-icon-72x72.png') }}">
	<link rel="apple-touch-icon" sizes="114x114" href="{{ asset('/favicon/apple-touch-icon-114x114.png') }}">

	<link href="{{ asset('/libs/normalize.css/normalize.min.css') }}" rel="stylesheet" type="text/css" media="all">
	<link href="{{ asset('/css/frontend/animate.min.css') }}" rel="stylesheet" type="text/css" media="all">
	<link href="{{ asset('/libs/owl-carousel-2/assets/owl.carousel.min.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/libs/jquery.bxslider/jquery.bxslider.min.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/fonts.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/font-awesome.min.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/plugins/sweetalert.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/main.css') }}?ver={{ $version }}" rel="stylesheet" type="text/css" media="all" />

</head>

<body>

	<div class="normal">
		<header class="header clearfix">
			<div class="wrapper">
				<ul class="lang">
					<li class="lang_item"><a @if(App::getLocale() == 'ru')class="active"@endif href="{{str_replace(url(App::getLocale()), url('ru'), Request::url())}}">rus</a></li>
					<li class="lang_item"><a  @if(App::getLocale() == 'ua')class="active"@endif href="{{str_replace(url(App::getLocale()), url('ua'), Request::url())}}">ukr</a></li>
				</ul>
				<a href="#" class="logo" data-page-num="2"><img src="{{ asset('/img/frontend/logo.png') }}" alt="DayProject"></a>
			</div>
		</header>

		<div class="content">
			<div class="content-wrap">
				<div class="block-content block_about">
					<div class="about_desc">
						<div class="about-info">
							{!! $company->getTranslate('description') !!}
						</div>
					</div>
				</div>
				<div class="block-content block_project">
					@foreach($project as $project_item)
						<div class="project-item" data-id="p{{ $project_item->id }}" style="background-image: url('{{ asset( $project_item->getAttributeTranslate('Картинка проекта')) }}');">
							<div class="project-item_name">
								<span class="project-item_name-text">{{ $project_item->getTranslate('title') }}</span>
							</div>
						</div>
					@endforeach
					@foreach($project as $project_item)
						<div id="project-carousel-p{{ $project_item->id }}" class="r-carousel-wrap">
							<div class="owl-carousel owl-theme">
								@foreach($project_item->getImages() as $imgSrc)
									<div class="gallery-item">
										<img src="/{{ $imgSrc['full'] }}" alt="">
									</div>
								@endforeach
							</div>
						</div>
					@endforeach
				</div>
				@if(count($news) == 1)
					<div class="block-content block_subject">
						<div class="project-item  news-item" data-id="s1" style="background-image: url('{{ asset( $news->getAttributeTranslate('Картинка предмета')) }}');">
							<div class="project-item_name news-item_name">
								<span class="project-item_name-text news-item_name-text">{{ $news->getTranslate('title') }}</span>
							</div>
						</div>
						<div id="project-carousel-s1" class="r-carousel-wrap">
							<div class="news-text">
								<h2 class="news-text_name">{{ $news->getTranslate('title') }}</h2>
								<div class="news-text_description">{!! $news->getTranslate('description') !!}</div>
								<button class="order">{{ trans('base.order')}}</button>
							</div>
							<div class="news-img">
								@foreach($news->getImages() as $imgSrc)
									<div class="img-wrap" style="background-image: url('/{{ $imgSrc['full'] }}')" alt=""></div>
								@endforeach
							</div>
						</div>
					</div>
				@else
					<div class="block-content block_subject">
						<ul class="bxslider">
							@foreach($news as $news_item)
							<li>
								<div class="project-item news-item" data-id="s{{ $news_item->id }}" style="background-image: url('{{asset( $news_item->getAttributeTranslate('Картинка предмета')) }}');">
									<div class="project-item_name news-item_name">
										<span class="project-item_name-text news-item_name-text">{{ $news_item->getTranslate('title') }}</span>
									</div>
								</div>
							</li>
							@endforeach
						</ul>
						@foreach($news as $news_item)
							<div id="project-carousel-s{{ $news_item->id }}" class="r-carousel-wrap">
								<div class="news-text">
									<h2 class="news-text_name">{{ $news_item->getTranslate('title') }}</h2>
									<div class="news-text_description">{!! $news_item->getTranslate('description') !!}</div>
									<button class="order">{{ trans('base.order')}}</button>
								</div>
								<div class="news-img">
									@foreach($news_item->getImages() as $imgSrc)
										<div class="img-wrap" style="background-image: url('/{{ $imgSrc['full'] }}')" alt=""></div>
									@endforeach
								</div>
							</div>
						@endforeach
					</div>
				@endif
				<div class="block-content block_contact">
					<div class="contact_desc">
						<div class="contact-info">
							{{ $texts->get('address') }}<br>
							{{ trans('base.tel')}}: {{ $texts->get('telephone') }} <br>
							{{ $texts->get('email') }}  <br>
							<form action="" id="contact-callback" method="post">
								<input type="text" name="name" placeholder="{{ trans('base.name') }}">
								<input type="email" name="email" placeholder="{{ trans('base.mail') }}">
								<textarea rows="8" name="text" placeholder="{{ trans('base.message') }}"></textarea>
								<input type="hidden" name="_token" value="{{csrf_token()}}"/>
								<button type="submit" id="send" class="btn btn__blue">{{ trans('base.send') }}</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<footer class="footer">
			<div class="wrapper">
				<ul class="soc">
					@foreach($social as $social_item)
						<li class="soc_item"><a href="{{ $social_item->getAttributeTranslate('Ссилка') }}" target="_blank">{{ $social_item->getTranslate('title') }}</a></li>
					@endforeach
				</ul>
			</div>
		</footer>

		<div class="sidebar sidebar_left">
			<ul class="nav">
				<li><a href="#" data-page-num="1" class="nav_item">
						@if(App::getLocale() == 'ua')
							<img src="/img/frontend/pro_nas.png" alt="">
						@else
							<img src="/img/frontend/pro_nas_ru.png" alt="">
						@endif
					</a>
				</li>
				<li><a href="#" data-page-num="2" class="nav_item active">
						@if(App::getLocale() == 'ua')
							<img src="/img/frontend/proekty.png" alt="">
						@else
							<img src="/img/frontend/proekty_ru.png" alt="">
						@endif
					</a>
				</li>
				<li><a href="#" data-page-num="3" class="nav_item">
						@if(App::getLocale() == 'ua')
							<img src="/img/frontend/news.png" alt="">
						@else
							<img src="/img/frontend/news_ru.png" alt="">
						@endif
					</a>
				</li>
				<li><a href="#" data-page-num="4" class="nav_item">
						@if(App::getLocale() == 'ua')
							<img src="/img/frontend/contact.png" alt="">
						@else
							<img src="/img/frontend/contact_ru.png" alt="">
						@endif
					</a>
				</li>
			</ul>
		</div>

		<div class="sidebar sidebar_right">
			<div class="sidebar_right_wrap">
				<div class="arrow-back_wrap clearfix">
					<div class="arrow-back" title="{{ trans('base.back')}}"></div>
				</div>
				<ul class="arrow-gallery">
					<li class="arrow-gallery-up" title="{{ trans('base.up')}}"></li>
					<li class="arrow-gallery-down" title="{{ trans('base.down')}}"></li>
				</ul>
				<ul class="arrow-news">
					<li class="arrow-news-up" title="{{ trans('base.up')}}"></li>
					<li class="arrow-news-down" title="{{ trans('base.down')}}"></li>
				</ul>
				<ul class="arrow">
					<li class="arrow-up" title="{{ trans('base.up')}}"></li>
					<li class="arrow-down" title="{{ trans('base.down')}}"></li>
				</ul>
				<ul class="pagination">
					<li><a href="#" data-page-num="1" class="pag_item"><i class="minus"></i><span class="page-num">01</span></a></li>
					<li><a href="#" data-page-num="2" class="pag_item active"><i class="minus"></i><span class="page-num active">02</span></a></li>
					<li><a href="#" data-page-num="3" class="pag_item"><i class="minus"></i><span class="page-num">03</span></a></li>
					<li><a href="#" data-page-num="4" class="pag_item"><i class="minus"></i><span class="page-num">04</span></a></li>
				</ul>
			</div>
		</div>
	</div>

	{{-- JS --}}
	{{--Файл переводов--}}
	<script>
		var trans = {
			'base.success': '{{ trans('base.success_send_contact') }}',
			'base.error': '{{ trans('base.error_send_contact') }}',
		};
	</script>
	{{--Файл переводов--}}
	<script src="{{ asset('/libs/jquery/dist/jquery.min.js') }}"></script>
	<script src="{{ asset('/libs/owl-carousel-2/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('/libs/jquery.bxslider/jquery.bxslider.min.js') }}"></script>
	<script src="{{ asset('/js/plugins/sweetalert.min.js') }}"></script>
	<script src="{{ asset('/js/frontend/common.js') }}?ver={{ $version }}"></script>
	{{-- JS --}}
</body>
</html>