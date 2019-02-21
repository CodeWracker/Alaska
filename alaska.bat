@echo off
mode 90,30
set laa=0
set roo=0
set sla=0
set cav=0
set mortes=0
echo msgbox"HÁ SABIA!era demais pra voce não é mesmo?",vbInformation,"ARREGÃO">%temp%/kkk.vbs
echo abriu >>LogDeObitos.txt
:a
cls
echo.
echo.
echo.
echo.
echo bem vindo a minha historia.
echo faça suas escolhas com 1,2 ou 3
echo.
echo por favor deixe em tela cheia
echo.
echo vamos comecar
echo.
echo.
echo.
echo.
echo.
echo.
pause
:menu
del sinalizador.txt
del perdeusin.txt
cls
echo voce morreu %mortes% vezes
echo    -----------------------------------------------------------------------------------
echo    -----------------------------------------------------------------------------------
echo.
echo                           *****************************************
echo                           *                                       *
echo                           *     criado por Rodrigo Ferraz Souza   *
echo                           *                                       *
echo                           *              1 - jogar                *
echo                           *              2 - sair                 *
echo                           *                                       *
echo                           *****************************************
echo    -----------------------------------------------------------------------------------
echo    -----------------------------------------------------------------------------------
set /p es=oq vc quer fazer?
if %es% equ 2 goto exit
cls
echo voce esta perdido no meio do alaska com apenas umas blusas de moletom e durante sua caminhada voce fica cansado e resolve dar uma parada,encontra um arvore la vai dar uma encostada nela pq ela parece mais confortavel que as outras :)
echo.
echo opa opa opa opa opa opa
echo tem alguma "cocitas" que voce pode gostar ehhehe
echo voce encontrou um sinalizador de pistola que aparenta ter só uma munição e ja esta pronto pra atirar,umas madeiras cortadas e uma pederneira que com algum esforço da p fazer uma fogueira bacana,uma roupa de frio pesada e umas latas de comida enlatada que voce va ter que esqquentar pra comer
echo -novo jogo- >>LogDeObitos.txt
echo 1 - sinalizador
echo 2 - madeiras com pederneira
echo 3 - roupa pesada
echo 4 - comida enlatada
set /p inicio= oque vai pegar,aventureito??
if %inicio% equ 1 goto sinalizador
if %inicio% equ 2 goto madeiras
if %inicio% equ 3 goto roupa
if %inicio% equ 4 goto latas
pause
cls
	:sinalizador
		echo sinalizador >sinalizador.txt
		if %roo% equ 1 (
		echo %roupa% sinalizador >>LogDeObitos.txt
		)
		if %roo% equ 0 (
		echo %inicio% sinalizador >>LogDeObitos.txt
		)
		echo 1 - sim
		echo 2 - não
		set /p escsin= echo vai fazer alguma coisa com ele?
		if %escsin% equ 1 goto 1s
		if %escsin% equ 2 goto 2s
		pause
		cls
			:1s
			cls
			echo %escsin% >>LogDeObitos.txt
			echo voce decide atirar pra cima.
			pause
			echo opa teve uma falha na hora de atirar e o tiro saiu pela culatra...
			echo ele foi bem na sua cara e voce começou a pegar fogo
			echo voce morreu queimado.
			set /a mortes=%mortes%+1
			pause
			cls
			goto menu
			:2s
			set laa=1
			echo %escsin% >>LogDeObitos.txt
			echo então vai guardar ele pra depois ne?ok.
			echo voce joga ele no chão p ir pegar uma das outras coisas mas ele bate numa pedra e explode,voce leva apenas um susto,mas perdeu seu sinalizador...
			echo perdeu >perdeusin.txt
			pause
			echo 2 - madeiras com pederneira
			echo 3 - roupa pesada
			echo 4 - comida enlatada
			set /p inicio2= oque vai pegar,aventureito??
			if %inicio2% equ 2 goto madeiras
			if %inicio2% equ 3 goto roupa
			if %inicio2% equ 4 goto latas
	:madeiras
		cls
		echo %inicio% madeira >>LogDeObitos.txt
		echo voce acende uma fogueira.
		echo cara que delicia,ta bem mais quente mas ainda ta meio frio
		echo 1 - sim
		echo 2 - nao
		set /p pgrroupamad= quer pegar uma "roupicha" um pouco mais quente?
		if %pgrroupamad% equ 1 goto mad1
		if %pgrroupamad% equ 2 goto mad2
			:mad1
			echo %pgrroupamad% >>LogDeObitos.txt
			cls
			echo voce pegou a roupa
			:kkk
			if %sla% equ 1 echo %roupa% madeira >>LogDeObitos.txt
			echo agora esta quentinho deitado do lado da arvore olhando para a fogueira e tranquilo pensando como ela e bela.
			:ccc
			if %cav% equ 1 echo %pgrroupamad% madeira >>LogDeObitos.txt
			echo sua barriga da uma roncadinha de leve,heheheh ta com fome garanhao?
			echo 1 - pegar latas
			echo 2 - nao pegar latas
			set /p latasmadeira= quer pegar aquelas latas pra esquentar e comer pra dormir de barriga cheia?
			if %latasmadeira% equ 1 goto lamad1
			if %latasmadeira% equ 2 goto lamad2
				:lamad1
				echo %latasmadeira% >>LogDeObitos.txt
				cls
				echo voce pega as latas e bota elas p esquentar e epa debaixo delas tava um ABRIDOR DE LATAS, cara que sorte ein.
				echo voce bota elas p esquentar e come
				echo epa
				echo opa
				echo qq é isso???
				echo ops esqueci de falar que elas estavam envenenadas
				pause
				echo voce morreu envenenado
				set /a mortes=%mortes%+1
				pause
				cls
				goto menu
				:lamad2
				echo %latasmadeira% >>LogDeObitos.txt
				cls
				echo então passa fome "mizera".
				set ra=%random%
				if %ra% GEQ 2300 goto miz1
				if %ra% lss 2300 goto miz2
					:miz1
					echo %ra% lobos>>LogDeObitos.txt
					cls
					echo voce deixou a fogueira acesa e foi dormir
					echo lobos te acharam e te devoraram
					set /a mortes=%mortes%+1
					pause
					cls
					goto menu
					:miz2
					echo %ra% fome>>LogDeObitos.txt
					cls
					echo voce deixou a fogueira acesa e foi dormir
					echo mas voce tava com muita fome e morreu...
					set /a mortes=%mortes%+1
					pause
					cls
					goto menu
			:mad2
			set cav=1
			cls
			echo ue kkk ok então né,fica com frio...
			goto ccc
	:roupa
	echo %inicio% roupa >>LogDeObitos.txt
	set sla=1
	pause
	echo agora esta mais ou menos
	echo 1 - sim
	echo 2 - nao
	set /p roupa= quer acender uma fogueira?
	if %roupa% equ 1 goto kkk
	if %roupa% equ 2 goto rp1
	cls
		:rp1
		set roo=1
		if exist sinalizador.txt goto rp2
		goto sinalizador
			:rp2
			echo 1 - sim
			echo 2 - nao
			set /p rp=quer pegar as latas?
			if %rp% equ 1 goto rrp1
			if %rp% equ 2 goto rrp2
				:rrp1
				echo %rp% >>LogDeObitos.txt
				echo voce se cansou de se foder e decide bater as latas em sua cabeça ate morrer
				set /a mortes=%mortes%+1
				pause
				cls
				goto menu
				:rrp2
				echo %rp% >>LogDeObitos.txt
				echo fazer oque...
				echo voce morreu de frio
				set /a mortes=%mortes%+1
				pause
				cls
				goto menu

	:latas
	if %laa% equ 1 echo %inicio2% latas >>LogDeObitos.txt
	if %laa% equ 0 echo %inicio% latas >>LogDeObitos.txt
	cls
	echo ok...voce pegou as latas
	echo 1 - acendo a fogueira pra comer elas
	echo 2 - num zei...
	set /p latas= oque vai fazer?
	if %latas% equ 1 goto lamad1
	if %latas% equ 2 goto rrp1
:exit
echo voce morreu %mortes% vezes até nao aguentar mais >>LogDeObitos.txt
start %temp%/kkk.vbs