BEGIN ~TIDISPER~
BEGIN ~TICORDEL~

// Feeder 1

CHAIN IF ~!Allegiance(Myself,[ENEMY]) !Allegiance("TICordel",[ENEMY]) !StateCheck(Myself,CD_STATE_NOTVALID)  !StateCheck("TICordel",CD_STATE_NOTVALID) Detect("TICordel") Global("TICLove","GLOBAL",0)~ THEN ~TIDisper~ Disperintro
~*Singing.* I'm getting married in the morning...~
EXTERN ~TIDisper~ wedparty

// Feeder 2

CHAIN IF ~!Allegiance(Myself,[ENEMY]) !Allegiance("TIDisper",[ENEMY]) !StateCheck(Myself,CD_STATE_NOTVALID)  !StateCheck("TIDisper",CD_STATE_NOTVALID) Detect("TIDisper") Global("TICLove","GLOBAL",0)~ THEN ~TICordel~ Cordelintro
~*Singing.* I'm getting married in the morning...~
EXTERN ~TIDisper~ wedparty

// Main dialogue

CHAIN ~TIDisper~ wedparty
~Ah, my beloved! The day we've been waiting for has come.~
== ~TICORDEL~ ~Yes, my love. Do you remember the first time we met? When you were guarding the entrance to Davaeorn's quarters and I was working with Stephen on wands?~
== ~TIDISPER~ ~Yes, but it seems so long ago. You were recharging those wands of magic missile... and then I saw your pretty face looking at me from across the room. You set off a missile and I barely got out of the way! *Laughs.* Was that only six months ago?~
== ~TICORDEL~ ~It was an accident! Really!~
== ~TIDISPER~ ~I know it was...~
== ~TICORDEL~ ~*Sigh.* That first time I saw you... Gods, you were hot! All swagger and muscles! My hands shook so that my fingers twitched on the wand! My love,  I could not have imagined then how important you would become to me, but I knew I wanted you from the first. Kiss me, Dispero!~
== ~TIDISPER~ ~*Kiss.* How sweet you taste! Well, we shall have the rest of our lives together to enjoy that. I wonder when the minister shall arrive? He was here only this morning...~
== ~TICORDEL~ ~My darling... I think our guests are arriving.~
== ~TIDISPER~ ~Yes. Let me just see to them... Wait! Who are you?~
END
++ ~We're uninvited wedding guests. What? No champagne or cake?~ + weda
++ ~We're <CHARNAME> and <PRO_HISHER> party of adventurers here to rescue the slaves and close down the mine.~ + wedb
++ ~Never mind that! Tell us where we can find the master of the mine?~ + wedc

CHAIN ~TIDISPER~ weda
~We didn't invite you. I must ask you to leave now.~
== ~TICORDEL~ ~Wait, my love, we should find out what they want... Look at them! They are stained with blood and look to have been in recent combat... Perhaps the screams we heard were not caused by the ogre mage's victims. Today's my wedding day... I don't want to die!~
== ~TIDISPER~ ~Do not worry, my love... I will protect you. What do you want from us?~
END
++ ~We're looking for your boss--the guy who runs this whole mine. Tell us where he is and we'll let you live.~ EXTERN ~TICORDEL~ wedd
++ ~Nothing. We'll just be on our way. You might want to consider leaving.~ EXTERN ~TICORDEL~ wede
++ ~We want you to die.~ + wedf

CHAIN ~TIDISPER~ wedb
~Hey! I can't let you do that!~
== ~TICORDEL~ ~Wait, darling... Look at them! They are stained with blood and look to have been in recent combat... Perhaps the screams we heard were not caused by the ogre mage's victims. Don't be a fool and throw our lives away over some misplaced sense of duty. Today's my wedding day... I don't want to die!~
== ~TIDISPER~ ~Do not worry, my love... Whatever happens, I will protect you. Look, whoever you are...<CHARNAME>... From the look of you, you've been slaughtering people to get this far...~
=~But we've been planning this wedding and our honeymoon for weeks. I'm technically on vacation. For the sake of my lady, could you just pretend you didn't see us leaving?~
END
++ ~We're looking for your boss--the guy who runs this whole mine. Tell us where he is and we'll let you live.~ EXTERN ~TICORDEL~ wedd
++ ~Nothing. We'll just be on our way. You might want to consider leaving.~ EXTERN ~TICORDEL~ wede
++ ~We want you to die.~ + wedf

CHAIN ~TIDISPER~ wedc
~You're looking for Davaeorn? I can't do that! I must protect...~
== ~TICORDEL~ ~Me!! You must protect me!! Our wedding has been crashed by a party of idealistic fanatics and all you can think about is the protecting some guy who couldn't be bothered to be here in the first place! NO! Don't be a fool and throw our lives away over some misplaced sense of duty. Today's my wedding day... I don't want to die!~
== ~TIDISPER~ ~Do not worry, my love... Whatever happens, I will protect you.~
== ~TICORDEL~ ~Look, whoever you are... You've clearly been killing our colleagues to have gotten this far in the Operation. We're probably supposed to try to stop you...~
=~But this is MY wedding. I won't have it! I'm not going to ruin what's left of our futures over a handful of miserable slaves and an old fart who hasn't given me a raise in three years! We're going to go find someplace else to get married.~
== ~TIDISPER~ ~Erm... Couldn't you just pretend you didn't see us leaving?~
END
++ ~Tell us where Davaeorn is and we'll let you live.~ EXTERN ~TICORDEL~ wedd
++ ~Nothing. We'll just be on our way. You might want to consider leaving.~ EXTERN ~TICORDEL~ wede
++ ~We want you to die.~ + wedf

CHAIN ~TICORDEL~ wedd
~Davaeorn's on the fourth level. You can't miss him.~
=~Come, love. Better to lose our jobs than our lives.~
== ~TIDISPER~ ~Right behind you, darling.~
END
IF ~~ THEN DO ~SetGlobal("TICLove","GLOBAL",1) ActionOverride("TICORDEL",EscapeArea()) ActionOverride("TIDISPER",EscapeArea())~ EXIT

CHAIN ~TICORDEL~ wede
~We'll take your advice, stranger. No offense, but I hope never to see you again.~
=~Come, love. I have a cousin in the Cowled Wizard in Athkatla. Perhaps after our honeymoon, I can join them and you can join the militia.~
== ~TIDISPER~ ~Right behind you, darling.~
END
IF ~~ THEN DO ~SetGlobal("TICLove","GLOBAL",1) ActionOverride("TICORDEL",EscapeArea()) ActionOverride("TIDISPER",EscapeArea())~ EXIT

CHAIN ~TIDISPER~ wedf
~I won't let you hurt Cordelia. You'll have to go through me, first. Run, Cordelia!!~
== ~TICORDEL~ ~I won't leave you, Dispero!!~
== ~TIDISPER~ ~NO!! I won't see you ravaged!! Get out while there's still time!~
== ~TICORDEL~ ~We'll die together, love... I won't go!~
END
IF ~~ THEN DO ~SetGlobal("TICLove","GLOBAL",1) ActionOverride("TICORDEL",Enemy()) ActionOverride("TIDISPER",Enemy()) ActionOverride("TICORDEL",Attack(Player1)) ActionOverride("TIDISPER",Attack(Player1))~ EXIT
