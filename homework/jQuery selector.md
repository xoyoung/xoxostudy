# jQuery 



## 선택자



:first 적용 예제

<script>	        

//<li class="choice">        

//("li").addClass("choice"); // 모든 li 태그에 class를 추가한다.        

// 첫번째 li에만 적용      

$("li:first").addClass("choice"); 

</script>



----



### jQuery Event



**.bind()** : event가 발생하면 실행될 함수를 지정한다. (이미 생성된 DOM에 대하여)

​        / $("#image").bind("mousedown", function(){

 

​                    // id image 요소에 마우스를 클릭했을 때, 해당 함수 실행 지정 

​           });

**.unbind()** : bind()를 해제한다.

**.live()** : 동적으로 생성된 DOM 객체들의 이벤트를 연결한다. (이벤트 버블 발생 가능)

​       / $("#image").live("click", function(){

 

​                    // id image 요소에 마우스를 클릭했을 때, 해당 함수 실행 지정 

​           });

**.die()** : live() 제거

 

**.delegate()** : 동적으로 생성된 DOM 객체들의 이벤트를 연결한다. (이벤트 버블 방지)

​      / $("#image").delegate("td", "click", function(){

 

​                    // id image 요소 밑의 'td'에 마우스를 클릭했을 때, 해당 함수 실행 지정 

​           });

**.undelegate()** : delegate() 제거

 

**.on()** : 동적으로 생성된 DOM 객체들의 이벤트를 연결한다. (1.7 이후 버전)

​      / $("#image").on("click", "td", function(){

 

​                    // id image 요소 밑의 'td'에 마우스를 클릭했을 때, 해당 함수 실행 지정 

 

​           });

​     / $("#image").on("click", "td",{foo: "bar"}, function(event){

​                      alert(event.data.foo);

 

​                    // id image 요소 밑의 'td'에 마우스를 클릭했을 때, {foo:"bar"}를 event에 넣어 함수 실행

 

​           }); 

**.off()** : on() 제거 (1.7 이후 버전)

**.one()** : bind() 함수처럼 선택된 이벤트를 지정한다. 하지만 딱 한번만 이벤트가 실행된다.

 

**.trigger()** : 선택된 요소의 이벤트를 발생시킨다.

​             / $("#img").trigger("click")    // id img 요소에 click 이벤트를 발생시킨다.

**.triggerHandler()** : trigger() 함수와 비슷하게 동작한다.

​                             - form submission에는 동작하지 않는다.

​                             - 선택된 요소들중 가장 첫번째 요소만 영향을 미친다.

​                             - 브라우저 기본동작, 버블링, live Events는 일어나지 않는다.

 

 $('element").명령어(function(event){

 

​              // element 요소에 명령어 실행시 함수 동작

​    });

 

 **- 웹 브라우져 Event**

 **.load()** : 문서가 불려졌을 때

 

**.unload()** : 문서가 닫혔을 때

 

**.ready()** : DOM이 모두 준비 되었을 때 함수 실행

 

**$.holdReady() <jQuery.holdReady()>** : DOM이 로드되는 것을 지연시켜준다. ; js 파일을 불러들이고 동작을 할때, js가 로드되지 않은 시점에 DOM이 로드 되는것을 방지해준다. / head 영역에 선언하는게 좋다.

​               $.holdReady(true);                             // DOM이 로드되는 것을 멈춘다.

​               $.getScript("myplugin.js", function(){    // myplugin.js 파일을 가져온다.

​                   $.holdReady(false);                         // 파일 로드가 성공하면 DOM을 구성한다.

​               });

 

**.resize()** : 창 크기가 변경되었을 때 함수 실행

 

**.scroll()** : HTML 문서가 스크롤 되었을 때

 

**.error()** : 선택된 개체(images, window, document 등)가 정확하게 로드(load)되지 않을 경우 발생 오류 이벤트

​            <img src="missing.png" alt="Book" id="book" />

 

​            $('#book').error(function(){

​                     // 이미지가 로드되지 않을 경우 함수 실행

​             });

 

 

**- - - 마우스 Event - - -**

 

**.click()** : 마우스 클릭시

**.dblclick()** : 마우스 더블 클릭시

**.mousedown()** : 마우스 버튼을 누른 순간

**.mouseup()** : 마우스 버튼을 놓는 순간

**.mouseover()** : 대상에 마우스 커서가 위치했을 때

**.mouseseenter()** : 대상에 마우스가 위치했을 때

**.mousemove()** : 대상에서  마우스 커서가 움직였을 때

**.mouseout()** : 대상에서 마우스가 벗어 났을때

**.mouseleave()** : 대상에서 마우스가 벗어났을 때

 

**.hover()** : 마우스가 요소에 오버되었을때 첫번째 함수가 실행되고, 마우스가 요소를 떠날때 두번째 함수가 실행된다.

​        / $("#p1").hover(function(event){

 

​                    // 마우스가 오버되었을때 함수 실행 

​            },

​            function(){

​                   // 마우스가 떠날때 함수 실행

​             });

 

**.toggle()**

 

 **- 키보드 Event**

 

**.keypress()** : 키 입력 시 발생(enter, tabemd의 특수키 제외)

**.keydown()** : 키 입력을 누르고 있을 때, 모든 키에 대해 적용

**.keyup()** : 키 입력 후 발생

 

 

**- form Event**

 

**.select()** : 선택한 개체를  선택 했을 때

 

**.change()** : <input />, <textarea />, <select /> 요소의 값 변경시 실행

 

**.focus()** : 해당 요소에 포커스를 받았을 때 실행되는 함수

**.focusin()** : focus() 의 업그레이드(1.4)

 

**.blur()** : 해당 요소에 포커스를 잃었을 때 실행되는 함수

**.focusout()** : blur()의 업그레이드(1.4)

 

**.submit()** : submit이 일어날 때

 

 

**- event 함수 option 처리**

**event.target** : event를 발생시킨 Target

**event.currentTarget**  : event 버블링으로 현재 이벤트 발생되는 Target

**event.relatedTarget** : 해당 이벤트와 관련된 다른 DOM 요소 선택

 

**event.result** :해당 이벤트가 실행한 이벤트 핸들러 함수에 의해 리턴되는 가장 마지막 값

 

**event.data** : event 대상이 가지고 있는 값

 

**event.namespace** : 이벤트가 tirgger 됐을때, 발생한 이벤트의 namespace

**event.pageX** : 이벤트가 발생한 요소의 문서의 왼쪽부터의 위치

**event.pageY** : 이벤트가 발생한 요소의문서의 상단으로부터의 위치

 

**event.timeStamp** : event가 실행된 시간

**event.type** : 실행된 event 타입

**event.which** : 이벤트가 발생된 요소의 key (키보드 값<숫자>, 마우스 <왼쪽 1, 중간 2, 오른쪽 3>)

**event.preventDefault()** : 해당 요소에 걸려있는 다른 이벤트를 무력화 한다. 

**event.isDefaultPrevented()** : event.preventDefault() 상태인지 체크 true / false

**event.stopPropagation()** : 다른 이벤트 핸들러가 호출되는 것을 막는다.(이벤트 버블링)

**event.stopImmediatePropagation()** : 다른 이벤트 핸들러가 호출되는 것을 막는다. (이벤트 버블링)

**event.isPropagationStopped()** : event.stopPropagation()이 호출 됐는지 여부 리턴 true / false 

**event.isImmediatePropagationStopped()** : event.stopImmediatePropagation()이 호출됐는지 여부 리턴 true /false

