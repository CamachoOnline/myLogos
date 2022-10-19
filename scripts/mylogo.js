const anArray = ["an--fadeout","an--fadein"];
const cycles = 3;
let inc = 0;
let changeState_Edit = () =>
{
	let $main = $('.js--main');
	$main.removeClass('isViewable').addClass('isEditable');
	removeLogo();
}
let changeState_View = () =>
{
	let $main = $('.js--main');
	$main.removeClass('isEditable').addClass('isViewable');
}
let uploadLogo = () =>
{
	let $form = $('.js--form-upload');
	if($form)
	{
		console.log('uploadform');
		
		// CANCEL
		let $cancel = $form.find('.js--btn-cancel');
		$cancel.unbind('click');
		$cancel.on('click',function(event){
			event.preventDefault();
			console.log("cancel[CLICK]");
			$.colorbox.close();
		});
		
		// UPLOAD
		let $upload = $form.find('.js--btn-upload');
		$upload.unbind('click');
		$upload.on('click',function(event){
			event.preventDefault();
			console.log("upload[CLICK]");
			let $form = $(this).closest('.js--form');
			let file_data = $form.find('#LogoFile').prop('files')[0];   
			let form_data = new FormData();                  
			form_data.append('file', file_data);
			//alert(form_data);                             
			$.ajax({
				url: 'scripts/uploadLogo_API.php', // <-- point to server-side PHP script 
				dataType: 'text',  // <-- what to expect back from the PHP script, if anything
				cache: false,
				contentType: false,
				processData: false,
				data: form_data,                         
				type: 'post',
				beforeSend: function()
                {
                    $.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">uploadingLogo</h2></div>'});
                },
				success: function(data){
					if(data){
						setTimeout(function(){
							$.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">Success</h2></div>'});
							setTimeout(function(){
								window.location.reload();
							},2000);
						},2000);
					}else{
						$.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">Failure</h2></div>'});
					}
				}
			});
			
		});
	}
}
let registerUser = () =>
{
	let $regForm = $('.js--form-register');
	if($regForm)
	{
		console.log("register");
		let $regBtn = $regForm.find('.js--btn');
		$regBtn.on("click", function(event){
			event.preventDefault();
			console.log("register[CLICK]");
			let $form = $(this).closest('.js--form');
			let send_data = $form.serialize() || false;
			$.ajax(
            {
                url : "scripts/registerUser_API.php",
                type: "POST",
                data: send_data,
                beforeSend: function()
                {
                    $.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">registeringUser</h2></div>'});
                },
				success: function(data) {
					if(data){
						setTimeout(function(){
							$.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">Success</h2></div>'});
							setTimeout(function(){
								window.location.reload();
							},2000);
						},2000);
					}else{
						$.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">Failure</h2></div>'});
					}
				}
            });
		});
	}
}
let signIn = () =>
{
	let $sgnForm = $('.js--form-signin');
	if($sgnForm)
	{
		console.log("signin");
		let $sgnBtn = $sgnForm.find('.js--btn');
		$sgnBtn.on("click", function(event){
			event.preventDefault();
			console.log("signin[CLICK]");
			let $form = $(this).closest('.js--form');
			let send_data = $form.serialize() || false;
			$.ajax(
            {
                url : "scripts/signIn_API.php",
                type: "POST",
                data: send_data,
                beforeSend: function()
                {
                    $.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">signingIn</h2></div>'});
                },
				success: function(data) {
					if(data){
						setTimeout(function(){
							$.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">Success</h2></div>'});
							setTimeout(function(){
								window.location.reload();
							},2000);
						},2000);
					}else{
						$.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">Failure</h2></div>'});
					}
				}
            });
		});
	}
}
let removeLogoRemove = () =>
{
	let $logo = $('.js--logo');
	$logo.unbind('click');
}
let removeLogo = () =>
{
	let $logo = $('.js--logo');
	$logo.unbind('click');
	$logo.on('click',function(event){
		event.preventDefault();
		let $l = $(this);
		let $i = $l.closest('.js--item');
		let logoNum = $l.attr('data-logo');
		let $f = $l.closest('.js--form');
		let userId = $f.attr('data-user');
		console.log(userId+" | "+logoNum);
		$.ajax(
        {
            url : "scripts/removeLogo_API.php",
            type: "POST",
            data: {"userid":userId,"logoid":logoNum},
            beforeSend: function()
            {
                $.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">removingLogo</h2></div>'});
            },
            success: function(data) {
                if(data){
                    setTimeout(function(){
                        $.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">Success</h2></div>'});
                        setTimeout(function(){
                            window.location.reload();
                        },2000);
                    },2000);
                }else{
                    $.colorbox({html:'<div class="mlgo--dialogue"><h2 class="mlgo--hdg mlgo--hdg-2">Failure</h2></div>'});
                }
            }
        });
	});
	
	let $llogo = $('.js--item:last-child .js--logo');
	$llogo.unbind('click');
	$llogo.on('click',function(event){
		event.preventDefault();
		let myHTML = '<div class="mlgo--dialogue">';
			myHTML += '<h2 class="mlgo--hdg mlgo--hdg-2">Select logo to upload:</h2>';
			myHTML += '<form class="mlgo--form js--form mlgo--form-upload js--form-upload">';
			myHTML += '<div class="mlgo--field js--field">';
			myHTML += '<input type="file" id="LogoFile" name="file">';
			myHTML += '</div>';
			myHTML += '<div class="mlgo--controls js--controls">';
			myHTML += '<button class="mlgo--btn js--btn mlgo--btn-cancel js--btn-cancel">Cancel</button>';
			myHTML += '<button class="mlgo--btn js--btn mlgo--btn-upload js--btn-upload">Upload</button>';
			myHTML += '</div>';
			myHTML += '</form>';
			myHTML += '</div>';
		$.colorbox({html: myHTML});
		uploadLogo();
	});
}
let viewGallery = () =>
{
	$('.js--btn-view').on('click',function(){
		let $btn = $(this);
		let cHref = window.location.href;
		if(cHref.indexOf('?state=edit')>-1){
			let baseUrl = cHref.substring(0,cHref.indexOf('?state=edit'));
			window.location.href = baseUrl;
		}
		/*
		let $hdr = $btn.closest('.js--header');
		let $edt = $hdr.find('.js--btn-edit');
		let $main = $btn.closest('.js--main');
		let $hdgEdit = $main.find('.js--editGallery');
		let $hdgMy = $main.find('.js--myGallery');
		*/
		/* Save logos
        let $logoForm = $main.find('.js--form-logos');
        let send_data = $logoForm.serialize(); || false;
        $.ajax(
        {
            url : "scripts/saveLogos_API.php",
            type: "POST",
            data: send_data,
            beforeSend: function()
            {
                $.colorbox({html:'savingLogos'});
            },
            success: function(data) {
				setTimeout(function(){
					$btn.addClass('isHidden');
					$edt.removeClass('isHidden');
					$main.removeClass('isEditable').addClass('isViewable');
					$hdgMy.removeClass('isHidden');
					$hdgEdit.addClass('isHidden');
					$.colorbox.close();
				},2000);
            }
        });
		
		
		$btn.addClass('isHidden');
		$edt.removeClass('isHidden');
		$main.removeClass('isEditable').addClass('isViewable');
		$hdgMy.removeClass('isHidden');
		$hdgEdit.addClass('isHidden');
		*/
		//removeLogoRemove();
	});
}
let editGallery = () =>
{
	$('.js--btn-edit').on('click',function(){
		let $btn = $(this);
		let cHref = window.location.href;
		if(!cHref.indexOf('?state=edit')>-1){
			window.location.href = cHref+'?state=edit';
		}
		/*
		let $hdr = $btn.closest('.js--header');
		let $vue = $hdr.find('.js--btn-view');
		let $main = $btn.closest('.js--main');
		let $hdgEdit = $main.find('.js--editGallery');
		let $hdgMy = $main.find('.js--myGallery');
		$btn.addClass('isHidden');
		$vue.removeClass('isHidden');
		$main.removeClass('isViewable').addClass('isEditable');
		$hdgEdit.removeClass('isHidden');
		$hdgMy.addClass('isHidden');
		removeLogo();
		*/
	});
}
let cycleLogos = () =>
{
	setTimeout(function()
	{
		let tgLogos = lgArray[inc];
		let foLogos = foArray[inc];
		let fiLogos = fiArray[inc];
		
		for(let i = 0; i < tgLogos.length; i++)
		{
			let $tLogo = $('.js--logo-'+tgLogos[i]);
			
			
			if($tLogo.hasClass(anArray[0]))
			{
				$tLogo.removeClass(anArray[0]).addClass(anArray[1]);	
			}
			else if($tLogo.hasClass(anArray[1]))
			{
				$tLogo.removeClass(anArray[1]).addClass(anArray[0]);
			}
			else
			{
				$tLogo.addClass(anArray[0]);
			}

            
			setTimeout(function(){
				
				if($tLogo.hasClass('logo-'+foLogos[i]))
				{
					$tLogo.removeClass('logo-'+foLogos[i]).addClass('logo-'+fiLogos[i]);
					let $tbLogo = $('.js--logo-'+tgLogos[i]);
					$tbLogo.attr('data-logo',fiLogos[i]);
				}
				if($tLogo.hasClass(anArray[0]))
				{
					$tLogo.removeClass(anArray[0]).addClass(anArray[1]);	
				}
				else if($tLogo.hasClass(anArray[1]))
				{
					$tLogo.removeClass(anArray[1]).addClass(anArray[0]);
				}
				else
				{
					$tLogo.addClass(anArray[0]);
				}
				
			},2000);

		}
		inc++;
		if(inc != cycles){
			cycleLogos();	
		}else{
			inc=0;
		}
		
	},3000);
}

$(document).ready(function(){
	let cHref = window.location.href;
	
	if(cHref.indexOf('?state=edit')>-1){
		changeState_Edit();
		viewGallery();
	}else{
		changeState_View();
		editGallery();
        let $logo = $('.js--logo');
        $logo.on('click',function(event){
            event.preventDefault();
        });
	}
	if(lgArray){
		cycleLogos();
	}

	signIn();
	registerUser();
});