# 한국 글옵 커뮤니티 No.1 좀비탈출 서버 콘픽 파일 목록#

## 카운터 스트라이크 글로벌 오펜시브 RSS 좀비탈출 서버를 위한 스트리퍼 , 스크립트 , 엔트와치 , 보스허드 파일 모음 깃 허브 

 


## 보스허드에 관해서
** math_counter, func_breakable, func_physbox 또는 func_physbox_multiplayer **를 먼저 찾아서 아래 형식에 맞게 보스 허드를 작성하고 
[**__Hestia__**](https://steamcommunity.com/id/zemghestia/) <- 에게 보내주면 됩니다 .
```
"math_counter"
{
	"config" //선택 사항 해도 안해도 상관없는 부분 
	{
		"MultBoss"			"" //하나에 보스에 2개 이상의 보스 히트박스가 있는지 "1"로 허용.
		"HitMarkerOnly"			"" //히트 마커랑 보스 랭킹만 보여줄건지 "1" 로 허용.
		"BossBeatenShowTopDamage"	"" //보스가 죽고나서 바로 딜랭킹을 보여줄긴지 "1"로 허용.
	}
	"0"
	{
		//math_counter 예시
		"HP_counter"		"" //math_counter 로 저장된 보스체력 targetname
		"HPbar_counter"		"" //코스모 마냥 보스 체력 막대기가 머리 위에 있는경우에만 사용
		"HPinit_counter"	"" //보스 체력 math_counter 에 넣어주기 이전에 체력을 측정하는 math_counter 가 있는 경우에만 사용
		"CustomText"		"" //보스 이름 뭐라고 보여줄건지
		"HPbar_min"		"" //보스 체력 막대기 math_counter 의 최소값 있는 경우에만 사용
		"HPbar_max"		"" //보스 체력 막대기 math_counter 의 최대값 있는 경우에만 사용
		"HPbar_default"		"" //보스 체력 막대기 math_counter 의 시작값 있는 경우에만 사용
		"HPbar_mode"		"" //보스 체력 막대기에 주는 아웃풋이 OnHitMin이면 "1"OnHitMax이면 "2" 있는경우에만 사용
	}
	"1"
	{
		//func_breakable,func_physbox,func_physbox_multiplayer 예시
		"Type"			"breakable" //건들필요 없음 
		"BreakableName"		"" //func_breakable,func_physbox,func_physbox_multiplayer 들의 targetname
		"CustomText"		"" //보스 이름 뭐라고 보여줄건지
	}
}
```

##스트리퍼에 관해서
맵의 버전을 올리지 않고 맵 버그들을 수정할수 있게 하는 콘픽 파일 
포럼에 있는 Sj58320 님의 스트리퍼 공략글과 디스코드 [#mapping](https://discord.gg/G5mTnd9) 채널 및 스트리퍼 예제 파일들을 참조해서 만들수 있고 
이 역시 만들고 나서 [**__Hestia__**](https://steamcommunity.com/id/zemghestia/) <- 에게 주면 서버에 적용 시켜줍니다.



##엔트와치에 관해서
아이템이 있는 맵들에 하얀색 글씨로 아이템을 누가 먹었는지 쿨타임은 어떠한지 보여주는 콘픽 파일
포럼에 있는 엔트와치 [공략글과](http://rssgo.co.kr/web/index.php?_filter=search&mid=explan&search_target=title_content&search_keyword=%EC%97%94%ED%8A%B8%EC%99%80%EC%B9%98&document_srl=46715)  엔트와치 예제 파일들을 참조해서 만들수 있고 
만들고 나서
[**__Hestia__**](https://steamcommunity.com/id/zemghestia/) **<- 에게 주면 서버에 적용 시켜줍니다.

