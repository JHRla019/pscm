// menu highlight 처리
function navHighlight(aTag) {
	var httpRequest = new XMLHttpRequest();
	if(!httpRequest) {
		return false;
	}
	
	httpRequest.open('GET', aTag.pathname);
	httpRequest.onreadystatechange = function() {
		if(httpRequest.readyState == 4 && httpRequest.status == 200) {
			var menu = document.getElementsByClassName('menu')
			for(var item of menu) {
				item.classList.remove('active');
			}
			aTag.classList.add('active');
		}
	}
	httpRequest.send();
}

//numberOnly text
function numCheck () {
	var numClass = document.getElementsByClassName('num');

	for(var item of numClass) {
		item.addEventListener('keyup', function(e) {
			if(e.keyCode == 8 || e.keyCode == 9 || e.keyCode == 13 || e.keyCode == 37 || e.keyCode == 39 || e.keyCode == 46) 
				return;
			if(e.keyCode < 48 || e.keyCode > 57) {
				alert('숫자만 입력해주세요.');
				e.target.value = e.target.value.replace(/[\a-z ㄱ-ㅎ ㅏ-ㅣ 가-힣]/g,'');
				return;
			}
			
		});
	}
}

//selectbox에서 프로그램ID가 선택됐을 경우
/*function viewProgramId() { 
	var col_program = document.getElementsByClassName("col-program");
	var selectBox = document.getElementById("viewClsfc");
	var selected = selectBox.options[selectBox.selectedIndex].value;
	
	for (var item of col_program) {
		item.style.display = (selected == 'select-programId') ? "table-cell" : "none"; 
	}
}*/

