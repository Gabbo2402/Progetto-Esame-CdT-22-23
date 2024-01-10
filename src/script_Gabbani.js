$(document).ready(function(){
	 $('#cancellature').on('click', function() {
        $('.del').toggle();
        if ($('.del').is(':visible')) {
            $('.del').css({
                'text-decoration': 'line-through',
                'background-color': '#Be5549'
            });
        } else {
            $('.del').css({
                'text-decoration': 'none',
                'background-color': 'transparent'
            });
        }
    });
    let clickCountAdd = 0;
    $('#aggiunte').on('click', function() {
        clickCountAdd++;
        if (clickCountAdd % 2 !== 0) {
            $('.add').css('background-color', '#d892d2');
        } else {
            $('.add').css('background-color', 'transparent');
        }
    });
    let clickCountNorm = 0;
    $('#normalizzazioni').on('click', function() {
        clickCountNorm++;
        if (clickCountNorm % 2 !== 0) {
            $('.reg').css({
                    'border': '3px solid #659f58',
                    'cursor': 'pointer' });
        } else {
            $('.reg').css('border', 'none');
        }
    });
    $('.reg').click(function() {
        $(this).prev('.orig').toggle(); 
    });
    let clickCountAbbr = 0;
    $('#abbreviazioni').on('click', function() {
        clickCountAbbr++;
        if (clickCountAbbr % 2 !== 0) {
            $('.abbr').css({'border': '3px solid #a16dcb',
                            'cursor': 'pointer' });
        } else {
            $('.abbr').css('border', 'none');
        }
    });
    $('.abbr').click(function() {
        $(this).next('.expan').toggle(); 
    });
    let clickCountNames = 0;
    $('#nomi').on('click', function() {
        clickCountNames++;
        if (clickCountNames % 2 !== 0) {
            $('.persName').css('background-color', '#abdbe3');
        } else {
            $('.persName').css('background-color', 'transparent');
        }
    });
    let clickCountCorr = 0;
    $('#correzioni').on('click', function() {
        clickCountCorr++;
        if (clickCountCorr % 2 !== 0) {
            $('.corr').css({'background-color': '#cf9050',
                            'cursor': 'pointer' });
        } else {
            $('.corr').css('background-color', 'transparent');
        }
    });
    $('.corr').click(function() {
        $(this).prev('.sic').toggle(); 
    });
    let clickCountPlaces = 0;
    $('#luoghi').on('click', function() {
        clickCountPlaces++;
        if (clickCountPlaces % 2 !== 0) {
            $('.placeName').css('background-color', '#FFC0C7');
        } else {
            $('.placeName').css('background-color', 'transparent');
        }
    });
    let clickCountOrg = 0;
    $('#organizzazioni').on('click', function() {
        clickCountOrg++;
        if (clickCountOrg % 2 !== 0) {
            $('.orgName').css('background-color', '#c3c397');
        } else {
            $('.orgName').css('background-color', 'transparent');
        }
    });
    let clickCountTerms = 0;
    $('#termini').on('click', function() {
        clickCountTerms++;
        if (clickCountTerms % 2 !== 0) {
            $('.term').css('background-color', '#Ffff97');
        } else {
            $('.term').css('background-color', 'transparent');
        }
    });
	let clickCountIncer = 0;
    $('#incertezze').on('click', function() {
        clickCountIncer++;
        if (clickCountIncer % 2 !== 0) {
            $('.unclear').css('background-color', '#00FF00');
        } else {
            $('.unclear').css('background-color', 'transparent');
        }
    });
});
	function openMenu(){
		document.getElementById("Sidenav").style.width = "250px";
	};
	function closeMenu(){
		document.getElementById("Sidenav").style.width = "0";
	};
	function dropNav() {
	document.getElementById("dropNav").classList.toggle("show");
	};
	function dropSel() {
	document.getElementById("dropSel").classList.toggle("show");
	};