#include <cmath>
#include <ctime>
#include <cstdio>
#include <iostream>
using namespace std;

//Получить порядок целого числа
int get_order(int number)
{
	int order = 0;

	while(number) {
		++order;
		number /= 10;
	}

	return order;
}

//Получаем значение каждого из разрядов
//От старшего разряда к младшему
//Выполняется медленнее, чем "younger_older"
void older_younger(int number)
{
	int n = 415203689;
	short bit;

	for(int i = 1; i < 10; ++i) {
		bit = number / pow(10, 9 - i);
		number = number - bit * pow(10, 9 - i);

		//cout << "Bit = " << bit << endl;
	}
}

//Получаем значение каждого из разрядов
//От младшего разряда к старшему
void younger_older(int number)
{
	int n = 415203689;
	short bit;

	for(int i = 1; i < 10; ++i) {
		bit = number % 10;
		number = (number - bit) / 10;

		//cout << "Bit = " << bit << endl;
	}
}

int main()
{
	int n = 415203689;
	cout << "Order(N) = " << get_order(n) << endl;

	/*double time = clock();
	for(int i = 0; i < 100000; ++i) {
		older_younger(n);
	}
	cout << "o_y(1000) = " << (clock() - time) / CLOCKS_PER_SEC << endl;
	getchar();
	time = clock();
	for(int i = 0; i < 100000; ++i) {
		younger_older(n);
	}
	cout << "y_o(1000) = " << (clock() - time) / CLOCKS_PER_SEC << endl;*/


	return 0;
}
