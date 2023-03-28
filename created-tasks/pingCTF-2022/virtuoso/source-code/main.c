#include <stdio.h>
#include <stdlib.h>
#include <windows.h>

void warning();
int final_performance(char *text);

int main()
{
	/*warning();

	printf("Welcome to PING CTF 2022!\n");
	printf("Just type in contents of flag wrapped in ping{...} and you are free to go ;)\n");*/
	char input[17];
	//scanf_s("%s", input,16);
	//printf("%s", input);
	fgets(input, 17, stdin);
	printf("%s", input);
	int end = final_performance(input);
	if (end) {
		printf("\nGZ");
	}
	else {
		printf("\ntry harder");
	}
	
	return 0;
}

