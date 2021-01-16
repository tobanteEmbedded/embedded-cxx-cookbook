#define F_CPU 16000000UL
#define BAUDRATE 9600UL
#define BRC ((F_CPU / 16 / BAUDRATE) - 1)

#include <avr/io.h>
#include <util/delay.h>

extern "C" int main()
{
  UBRR0H = (BRC >> 8);
  UBRR0L = BRC;

  UCSR0B = (1 << TXEN0);
  UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);

  while (true) {
    UDR0 = 'a';
    _delay_ms(1000);
  }
}
