@extends('frontend.app')

@section('title')
    Contact Us - Heritage
@endsection

@section('section')
<div class="page-top">
    <div class="container">
        <div class="page-title">
            <div data-velocity="-.2" style="background: url({{asset('front/images/resource/contact.jpg')}}) repeat scroll 50% 422.28px transparent;" class="parallax scrolly-invisible"></div><!-- PARALLAX BACKGROUND IMAGE -->        
            <h2>Heritage <strong>Contact</strong></h2>
            <ul>
                <li><a itemprop="url" href="{{route('index')}}" title="">Home</a></li>
                <li>Contact</li>
            </ul>
        </div><!-- Page Title -->
    </div>
</div><!-- Page Top -->
<section>
    <div class="block gray">
        <div class="container">
            <div style="margin-top: 100px" class="row">
                <div class="col-md-12 column">
                    <div class="contact-box overlap" style="padding:20px;">
                        <div class="title">
                            <h2>CONTACT <span>Us</span></h2>
                            <h3>Committed <span>To Providing The Best</span></h3>
                        </div>                  
                        <div class="countries-contact" style=" font-family:Arial;">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="contact-info">
                                        <p> </p>

                                        <div class="row">
                                            <div class="col-md-12 col-sm-12">
                                                <strong><i class="fa fa-home"></i>ADDRESS</strong>
                                                <span>{{CRUDBooster::getSetting('address')}}</span>
                                            </div>
                                            <div class="col-md-12">
                                                <strong><i class="fa fa-envelope"></i>EMAIL ID</strong>
                                                <span>{{CRUDBooster::getSetting('email')}}</span>
                                            </div>
                                            <div class="col-md-12">
                                                <strong><i class="fa fa-phone"></i>PHONE NO</strong>
                                                <span>{{CRUDBooster::getSetting('phone1')}}   /   {{CRUDBooster::getSetting('phone2')}}</span>
                                            </div>
                                            <div class="col-md-12">
                                                <strong><i class="fa fa-link"></i>WEB ADDRESS</strong>
                                                <span>{{CRUDBooster::getSetting('website')}}</span>
                                            </div>
                                        </div>
                                    </div><!-- Contact Info -->
                                </div>

    <div class="col-md-6 col-sm-12">
    <section>
    <div class="block extra-gap no-padding">
        <div class="">
            <div class="row">
                <div class="col-md-12 column">
                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d116880.06729500112!2d90.417304!3d23.729468!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x21bd10669e99436f!2sHeritage%20Air%20Express%20Ltd.%20(%20Motijheel%20)!5e0!3m2!1sen!2sbd!4v1637390008563!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                    </div><!-- Google Map -->
                </div>
            </div>
        </div>
    </div>
</section><!-- Google Map Section -->
    </div>
                                <div class="col-8">
                                    <div id="message"></div>
                                    <form class="contact-form" method="post" action="{{route('contact-message-store')}}">
                                        @csrf
                                        <div style="margin-top: 80px;" class="row">
                                            <div class="col-md-12"><input name="name" type="text" placeholder="Name" id="name" required="" /></div>
                                            <div class="col-md-12"><input name="phone" type="text" placeholder="Phone" id="phone" required="" /></div>
                                            <div class="col-md-12"><input name="email" type="text" placeholder="Email" id="email" /></div>
                                            <div class="col-md-12"><textarea name="message" placeholder="Message" id="comments"></textarea></div>
                                            <div class="col-md-12"><button type="submit" id="submit" class="submit">Send Message</button></div>
                                        </div> 
                                    </form>
                                </div>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!-- contact form -->
@endsection
@push('scripts')
<script>
    jQuery(document).ready(function ($) {
        /* ============ Sponsors Carousel ================*/
        $('.countries-contact ul').owlCarousel({
            autoplay: true,
            autoplayTimeout: 2500,
            smartSpeed: 2000,
            loop: false,
            dots: false,
            nav: true,
            margin: 0,
            mouseDrag: true,
            items: 5,
            autoHeight: true,
            responsive: {
                0: {items: 1},
                480: {items: 1},
                768: {items: 3},
                1200: {items: 5},
            }
        });


        /* ============ Sponsors Carousel ================*/
        $('.sponsors-carousel').owlCarousel({
            autoplay: true,
            autoplayTimeout: 2500,
            smartSpeed: 2000,
            loop: true,
            dots: false,
            nav: true,
            margin: 10,
            mouseDrag: true,
            items: 5,
            autoHeight: true,
            responsive: {
                0: {items: 1},
                480: {items: 2},
                768: {items: 3},
                1200: {items: 5},
            }
        });

        /*================== Map =====================*/
        function initialize() {
            var myLatlng = new google.maps.LatLng(51.5015588, -0.1276913);
            var mapOptions = {
                zoom: 14,
                disableDefaultUI: true,
                scrollwheel: false,
                center: myLatlng
            }
            var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

            var image = 'images/icon.png';
            var myLatLng = new google.maps.LatLng(51.5015588, -0.1276913);
            var beachMarker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                icon: image
            });

        }
        google.maps.event.addDomListener(window, 'load', initialize);


    });
</script>   
@endpush