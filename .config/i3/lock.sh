#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#ff00ffcc'  # default
T='#ee00eeee'  # text
W='#ff0000bb'  # wrong
G='#39ff14aa'  # green
L='#0000ffff'  # blue

i3lock \
--insidevercolor=$C   \
--ringvercolor=$L     \
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
--insidecolor=$B      \
--ringcolor=$G        \
--linecolor=$D        \
--separatorcolor=$B   \
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--keyhlcolor=$L       \
--bshlcolor=$W        \
--greetercolor=$G	\
\
--screen 1			\
--nofork			\
--blur 10			\
--clock				\
--indicator			\
--radius 130			\
--ring-width 9.0		\
--show-failed-attempts		\
--timestr="%I:%M:%S %p"		\
--datestr="%a %d/%m/%Y" 	\
\
--pass-media-keys	\
--pass-volume-keys	\
--pass-screen-keys	\
\
--time-font='Fira Code'			\
--date-font='Fira Code'			\
--verif-font='Fira Code'		\
--greeter-font='Fira Code'		\
--datesize=20				\
--veriftext="VERIFYING"			\
--wrongtext='WRONG!'			\
--noinputtext="No Input"		\
--greetertext='LOCKED'
# etc
