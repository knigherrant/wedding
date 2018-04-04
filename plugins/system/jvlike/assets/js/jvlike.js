$JVLIKE(function($){
	$('.jvlikeBtn').click(function(){
		var $this = $(this);
		$this.attr('disabled', true);
		$this.find('.jvlikeCount').hide();
		$this.find('.jvlikeLoader').show();
		$.getJSON('index.php?plg=jvlike&item='+$this.attr('id'), function(data){
			$this.attr('disabled', false);
			$this.find('.jvlikeCount').show();
			$this.find('.jvlikeLoader').hide();
            if(data.rs){
				$this.attr('title', data.title);
				$this.find('.jvlikeCount').text(data.likes);
				$this.find('.jvlikeText').text(data.label);
			}else{
				alert(data.msg);
			}
        });
		
	});
});