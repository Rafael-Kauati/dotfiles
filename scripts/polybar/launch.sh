#!/bin/bash
#killall -q polybar

#pkill polybar

#kill -9 $(pgrep -f 'polybar') >/dev/null 2>&1

#polybar-msg cmd quit >/dev/null 2>&1

#polybar-msg cmd:quit

# Wait until the processes have been shut down
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


# Termine instâncias de barras em execução

# Espere até que os processos em execução sejam terminados
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# execute a Polybar, usando a configuração padrão ~/.config/polybar/config
#killall -q polybar

echo "Polybar lançada..."

# Launch bar1 and bar2
#polybar -c ~/.config/polybar/config.ini 
polybar -c  /etc/polybar/config.ini &
