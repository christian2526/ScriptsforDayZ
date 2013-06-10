//Created By |DX| Fusi0n Fir3
if (isNil "custom_monitor") then {custom_monitor = true;} else {custom_monitor = !custom_monitor;};

while {custom_monitor} do
{
    _kills =        player getVariable["zombieKills",0];
    _killsH =        player getVariable["humanKills",0];
    _killsB =        player getVariable["banditKills",0];
    _humanity =        player getVariable["humanity",0];
    _headShots =    player getVariable["headShots",0];
	_zombies = count entities "zZombie_Base";
	_zombiesAlive = {alive _x} count entities "zZombie_Base";
    hintSilent parseText format ["
    <t size='1.35'font='Bitstream'align='center' color='#5882FA'>%1</t><br/>
    <t size='0.95'font='Bitstream'align='left'color='#FFBF00'>Blood:</t><t size='1' font='Bitstream'align='right'>%2</t><br/>
    <t size='0.95'font='Bitstream'align='left'color='#FFBF00'>Humanity:</t><t size='1'font='Bitstream'align='right'>%3</t><br/>
    <t size='0.95'font='Bitstream'align='left'color='#FFBF00'>Players Killed:</t><t size='1'font='Bitstream'align='right'>%4</t><br/>
    <t size='0.95'font='Bitstream'align='left'color='#FFBF00'>Bandits Killed:</t><t size='1'font='Bitstream'align='right'>%5</t><br/>
    <t size='0.95'font='Bitstream'align='left'color='#FFBF00'>Zombies Killed:</t><t size='1'font='Bitstream'align='right'>%6</t><br/>
    <t size='0.95'font='Bitstream'align='left'color='#FFBF00'>Headshots:</t><t size='1'font='Bitstream'align='right'>%7</t><br/>
	<t size='0.95'font='Bitstream'align='left'color='#FFBF00'>Zombies (Alive/Total):</t><t size='1'font='Bitstream'align='right'>%8/%9</t><br/>
	<t size='0.95'font='Bitstream'align='left'color='#10ff11'>FPS:</t><t size='1'font='Bitstream'align='right'>%10</t><br/>
	<t size='1.35'font='Bitstream'align='center' color='#7d001e'>Lingor rMod 2.1</t><br/>
    ",dayz_playerName,r_player_blood,round _humanity,_killsH,_killsB,_kills,_headShots,_zombiesAlive,_zombies,floor(diag_fps)];
sleep 1;
};
