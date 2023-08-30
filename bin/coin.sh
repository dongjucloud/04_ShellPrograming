#!/bin/bash
# 인사말 만들기
# 함수를 이용하여 컴퓨터 랜덤 오토시스템 만들기
# 총맟춘 개수 설정
# 숫지를 입력시 오토시스템 가동


clear

# intro( 게임 오프닝)

echo "     ------------------------------------------------------------
        동전 던지기 게임입니다. 당신의 운을 한번 확인 해보세요.
	    당신은 보기와 같은 숫자를 선택할수 있습니다. 
                    1(앞면), 2(뒷면), 0(exit)
    -------------------------------------------------------------"
read -t10 -n 1 -p  "               Enter 또는 다른키를 누르면 시작합니다.
                    (미입력시 10초후 자동시작)" 
if [ -n $start ]; then
	echo 
    echo "' !! GAME START ** GOOD LUCK!! '"SS
fi

# computer function (컴퓨터 오토 함수)
# 함수를 설정하여 동전의 앞면 뒷면을 1,2로 지정한다.
# 그에 따른 TURE , FAIL 결과 값 설정.

ai() {

if [ $computer = 1 ]; then
	echo "
동전을 던졋습니다."
	if [ $gamer = 1 ]; then
		echo "
		앞면입니다."
        fail=`echo $fail + 1 |bc`
        true=`echo $true + 1 |bc`
		echo " --------------------------------------"
        echo "맟추셧습니다! 당신 정말 운이 좋군요!
총 $fail 판중 $true 번 맞추셨습니다."
	fi
	
	if [ $gamer = 2 ]; then
		echo "
		앞면입니다."
        fail=`echo $fail + 1 |bc`
		echo " --------------------------------------"
        echo "아쉽지만 틀렸습니다! 다음 운을 믿으세요!
총 $fail 판중 $true 번 맞추셨습니다."
	fi
	
fi

if [ $computer = 2 ]; then
	echo "
동전을 던졌습니다..."
	if [ $gamer = 1 ]; then
	echo "
		뒷면입니다."
		fail=`echo $fail + 1 |bc`
		echo " --------------------------------------"
        echo "아쉽지만 틀렸습니다! 다음 운을 믿으세요!
총 $fail 판중 $true 번 맞추셨습니다."
	fi
	
	if [ $gamer = 2 ]; then
		echo "
		뒷면입니다."
        fail=`echo $fail + 1 |bc`
        true=`echo $true + 1 |bc`
		echo " --------------------------------------"
        echo "맟추셧습니다! 당신 정말 운이 좋군요!
총 $fail 판중 $true 번 맞추셨습니다."
	fi
	
fi

}

# 정답 변수설정 0부터시작 

fail=0
true=0

# 게임 시작시 입력값에대한 반복구문과 게임종료문구 설정 

while [ : ]; do

read -n 1 -p "
한번 더 하시려면 번호를 누르세요. [1(앞면), 2(뒷면), 0(종료)]" gamer


if [ -n $gamer  ]; then
	clear
	if [ $gamer = 0 ]; then
		echo 
        echo
        echo "다음에 또 승리의 여신과 함께~!"
		exit 0
	fi

# 함수에 대한 1,2 값을 랜덤으로 지정하여 설정한다. 

	computer=`echo "($RANDOM % 2) + 1" | bc`
	if [ $gamer = 1 ]; then
		echo "
당신은 (앞면)을 선택하셨습니다."

# ai 함수를 다시 불러오기 

		ai		
	fi
	if [ $gamer = 2 ]; then
		echo "
당신은 (뒷면)을 선택하셨습니다."
		ai	
	fi

fi  


done