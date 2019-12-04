#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
	freopen("getArgs.bat", "w", stdout);
	int i;
	for(i=0; i<argc; i++) {
		printf("\"%s\" ", argv[i]);
	}
	system("subl getArgs.bat");
	return 0;
}