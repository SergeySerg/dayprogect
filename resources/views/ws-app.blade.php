<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">
<head>
	<meta charset="utf-8">
	<title>DayProject</title>

	{{--	<title>@if($categories_data[$type]->getTranslate('meta_title')){{ $categories_data[$type]->getTranslate('meta_title') }} @else DayProject @endif</title>
        <meta name="description" content="@if($categories_data[$type]->getTranslate('meta_description')){{ $categories_data[$type]->getTranslate('meta_description') }} @else ДЕНЬ project - проект вашого простору @endif">
        <meta name="keywords" content="@if($categories_data[$type]->getTranslate('meta_keywords')){{ $categories_data[$type]->getTranslate('meta_keywords') }} @else DayProject @endif">--}}

	<link rel="shortcut icon" href="{{ asset('/favicon/favicon.ico') }}" type="image/x-icon">
	<link rel="apple-touch-icon" href="{{ asset('/favicon/apple-touch-icon.png') }}">
	<link rel="apple-touch-icon" sizes="72x72" href="{{ asset('/favicon/apple-touch-icon-72x72.png') }}">
	<link rel="apple-touch-icon" sizes="114x114" href="{{ asset('/favicon/apple-touch-icon-114x114.png') }}">

	<link href="{{ asset('/libs/normalize.css/normalize.min.css') }}" rel="stylesheet" type="text/css" media="all">
	<link href="{{ asset('/css/frontend/animate.min.css') }}" rel="stylesheet" type="text/css" media="all">
	<link href="{{ asset('/libs//owl-carousel-2/assets/owl.carousel.min.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/fonts.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/font-awesome.min.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/main.min.css') }}?ver={{ $version }}" rel="stylesheet" type="text/css" media="all" />

</head>

<body>
	<div class="normal">
		<header class="header clearfix">
			<div class="wrapper">
				<ul class="lang">
					<li class="lang_item"><a @if(App::getLocale() == 'en')class="active"@endif href="{{str_replace(url(App::getLocale()), url('en'), Request::url())}}">eng</a></li>
					<li class="lang_item"><a  @if(App::getLocale() == 'ua')class="active"@endif href="{{str_replace(url(App::getLocale()), url('ua'), Request::url())}}">ukr</a></li>			</ul>
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
				@if(count($subject) == 1)
					<div class="block-content block_subject">
						<div class="project-item" data-id="s1" style="background-image: url('{{ asset( $subject->getAttributeTranslate('Картинка предмета')) }}');">
							<div class="project-item_name">
								<span class="project-item_name-text">{{ $subject->getTranslate('title') }}</span>
							</div>
						</div>
						<div id="project-carousel-s1" class="r-carousel-wrap">
							<div class="owl-carousel owl-theme">
								@foreach($subject->getImages() as $imgSrc)
									<div class="gallery-item">
										<img src="/{{ $imgSrc['full'] }}" alt="">
									</div>
								@endforeach
							</div>
						</div>
					</div>
				@else
					<div class="block-content block_subject">
						@foreach($subject as $subject_item)
							<div class="project-item" data-id="s{{ $subject_item->id }}" style="background-image: url('{{ asset( $subject_item->getAttributeTranslate('Картинка предмета')) }}');">
								<div class="project-item_name">
									<span class="project-item_name-text">{{ $subject_item->getTranslate('title') }}</span>
								</div>
							</div>
						@endforeach
						@foreach($subject as $subject_item)
							<div id="project-carousel-s{{ $subject_item->id }}" class="r-carousel-wrap">
								<div class="owl-carousel owl-theme">
									@foreach($subject_item->getImages() as $imgSrc)
										<div class="gallery-item">
											<img src="/{{ $imgSrc['full'] }}" alt="">
										</div>
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
							<img src="/img/frontend/pro_nas_en.png" alt="">
						@endif
					</a>
				</li>
				<li><a href="#" data-page-num="2" class="nav_item active">
						@if(App::getLocale() == 'ua')
							<img src="/img/frontend/proekty.png" alt="">
						@else
							<img src="/img/frontend/proekty_en.png" alt="">
						@endif
					</a>
				</li>
				<li><a href="#" data-page-num="3" class="nav_item">
						@if(App::getLocale() == 'ua')
							<img src="/img/frontend/predmety.png" alt="">
						@else
							<img src="/img/frontend/predmety_en.png" alt="">
						@endif
					</a>
				</li>
				<li><a href="#" data-page-num="4" class="nav_item">
						@if(App::getLocale() == 'ua')
							<img src="/img/frontend/contact.png" alt="">
						@else
							<img src="/img/frontend/contact_en.png" alt="">
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

	<script src="{{ asset('/libs/jquery/dist/jquery.min.js') }}"></script>
	<script src="{{ asset('/libs/owl-carousel-2/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('/js/frontend/common.min.js') }}?ver={{ $version }}"></script>

	{{-- JS --}}
</body>
</html>