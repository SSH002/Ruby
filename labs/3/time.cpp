#include <string>
#include <cstdio>
#include <cstdlib>
#include <iostream>
using namespace std;

//Модель изменения времени для игры "Маргинал Валера"
int main()
{
	short d, h, m, buffer;
	string Input;

	do {
		Input = " @@~";
		d = 1; h = 0; m = 0;

		while(d < 8) {
			buffer = 5 + rand() % 11;
			m += buffer;

			if(m >= 60) {
				h += m / 60;
				m %= 60;
			}
			if(h >= 24) {
				d += h / 24;
				h %= 24;
			}

			cout << "Day = " << d << ", Hour: " << h << ", Minute: " << m << " [" << buffer << "]";
			getchar();
		}

		cout << "Поздравляем! Вы успешно прошли курсы и выжили! Начать новую игру или выйти?\n";
		cout << "\'Q\' - Выйти,\'N\' - Начать новую игру\nВвод >> ";
		do {
			if(Input != " @@~") {
				cout << "Ошибка! Введены неверные данные!\nВвод >> ";
			}
			cin >> Input;
		} while(Input[0] != 'q' && Input[0] && 'Q' && Input[0] != 'n' && Input[0] != 'N');
	} while(Input[0] != 'q' && Input[0] != 'Q');

	return 0;
}
