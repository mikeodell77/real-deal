// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

var twitter = {
    container: $('#tweets_container'),
    loading_image: $('#twitter_loading'),
    update_interval: 40000, //7 minutes
    clearTimeout: function() {
        if (this.timer_id) {
            clearTimeout(this.timer_id)
        }
    },
    autoUpdate: function() {
        var self = this;
        self.clearTimeout();
        self.timer_id = setTimeout(function() {
            self.initialize();
        }, self.update_interval);
    },
    initialize: function() {
        var self = this;
        self.clearTimeout();
        if ($('#tweets_container').size() > 0) {
            $.ajax({
                type: 'get',
                url: "/tweets",
                data: {},
                dataType: 'html',
                ifModified: true,
                beforeSend: function() {
                    // self.container.hide('slow');
                    self.loading_image.show('fast');
                },
                success: function(data, status) {
                    if (status != 'notmodified') {
                        // alert(data);
                        self.container.fadeOut(1200, function() {
                            $(this).html(data);
                            $(this).fadeIn(1200);
                        });
                    }
                    self.loading_image.hide('fast');
                    self.autoUpdate();
                },
                error: function() {
                    self.loading_image.hide('fast');
                    self.autoUpdate();
                }
            });
        }
    }
};
twitter.initialize();
