@extends('frontend.app')

@section('title')
	Home - Heritage
@endsection

@section('section')
<section>
	<div class="block gray no-padding">
		<div class="">
			<div class="row">
				<div class="col-md-12 column">
					<div id="layerslider-container-fw">
						<div id="layerslider" style="width: 100%; height: 570px; margin: 0px auto; ">	
							@foreach($sliders as $slider)	
							<div class="ls-slide" data-ls="transition2d:12; timeshift:-1000;">	
								<img itemprop="image" src="{{asset($slider->image)}}" class="ls-bg" alt="Slide background" />
								<div class="ls-l slide-title" style="top:130px;left:50%;font-size:70px;font-weight:600;" data-ls="offsetyin:50px;offsetxin:0;durationin:1500;delayin:400;easingin:easeOutBack;">{{$slider->title1}}</div>
								<div class="ls-l slide-subtitle" style="top:220px;left:50%;font-size:26px;" data-ls="offsetyin:-50px;offsetxin:0;durationin:1500;delayin:800;">{{$slider->title2}}</div>
								<div class="ls-l slide-text" style="top:270px;left:50%;font-size:40px;" data-ls="offsetyin:50px;offsetxin:0;durationin:1500;delayin:1200;">{{$slider->title3}}</div>
	
							</div> <!-- Slide1 -->
							@endforeach
						</div>
					</div><!-- Layer Slider -->	
				</div>	
			</div>
		</div>
	</div>
</section><!-- Slider Section -->




<section>
	<div class="block whitish parallax-sec">
		<div class="parallax" style="background:url({{asset('front/images/resource/parallax1.jpg')}}) repeat scroll 0 0 rgba(0, 0, 0, 0);" data-velocity="-.1"></div>			
		<div class="container">
			<div class="row">
				<div class="col-md-12 column">
					<div class="urgent-cause">
						<div class="row">
							<div class="col-md-6 column">
								<div class="urgentcause-detail">
									<h3>{{CRUDBooster::getSetting('slider_bottom_section_title')}}</h3>
									<p>{!!CRUDBooster::getSetting('slider_bottom_section_content')!!}</p>

								</div><!-- Urgent Cause Detail -->
							</div>
							<div class="col-md-6 column">
								<div class="urgentcause2">
									<div class="col-md-5"><a itemprop="url" href="#" title=""><img itemprop="image" src="{{asset(CRUDBooster::getSetting('slider_bottom_section_image'))}}" alt="" /></a></div>
									
								</div>
							</div>

						</div>
					</div><!-- Urgent Cause -->
				</div>
			</div>
		</div>
	</div>
</section>


<section>
	<div class="block grayimg">
		<div class="container">
			<div class="row">
				<div class="col-md-12 column">
					<div class="title">
						<h2 style="color: #fff">Tour  <span>Package</span></h2>
					</div>
					<div class="successful-stories">
						<div class="row">
							<div class="sponsors-carousel">
								@foreach($tour_packages as $package)
								<div class="col-md-4 sponsor">
									<div class="story">
										<div class="story-img">
											<img itemprop="image" src="{{asset($package->image1)}}" alt="" />
											<a itemprop="url" href="{{route('single-tour-package', $package->id)}}" title="">+</a>
										</div>
										<div class="story-detail">
											<span>{{$package->duration}}</span>
											<h3><a itemprop="url" href="{{route('single-tour-package', $package->id)}}" title="">{{$package->place}}</a></h3>
										</div>
										<div class="spent-bar">
											<span>Money Spent</span>
											<span class="price"><i>৳</i>{{$package->amount}}</span>
										</div>
									</div><!-- Story -->
								</div>
								@endforeach
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="block blackish">
		<div data-velocity="-.1" style="background: url({{asset('front/images/resource/parallax3.jpg')}}) repeat scroll 50% 422.28px transparent;" class="parallax scrolly-invisible"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-12 column">
						<div class="title">
							<h2>Hajj  <span>Package</span></h2>
						</div>
						<div class="successful-stories">
							<div class="row">
								@foreach($hajj_packages as $package)
								<div class="col-md-3">
									<div class="story">
										<div class="story-img">
											<img itemprop="image" src="{{asset($package->image1)}}" alt="" />
											<a itemprop="url" href="{{route('single-hajj-package', $package->id)}}" title="">+</a>
										</div>
										<div class="story-detail">
											<span>{{$package->duration}}</span>
											<h3><a itemprop="url" href="{{route('single-hajj-package', $package->id)}}" title="">{{$package->place}}</a></h3>
										</div>
										<div class="spent-bar">
											<span>Money Spent</span>
											<span class="price"><i>৳</i>{{$package->amount}}</span>
										</div>
									</div><!-- Story -->
								</div>
								@endforeach
							</div>
						</div><!-- Successful Stories -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

@endsection