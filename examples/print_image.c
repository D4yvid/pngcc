#include "image.h"
#include <stdio.h>

int main()
{
    for (int y = 0; y < image_data.height; y++)
	{
        for (int x = 0; x < image_data.width; x++)
		{
            int index = ((y * image_data.width) + x) * 3;

			unsigned char r = image_data.pixels[index];
			unsigned char g = image_data.pixels[index + 1];
			unsigned char b = image_data.pixels[index + 2];

			printf("\033[48;2;%d;%d;%dm  \033[0m", r, g, b);
		}

		printf("\n");
	}

    return 0;
}
