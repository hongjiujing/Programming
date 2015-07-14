/* xres = 160 */
/* yres = 160 */
uint8_t fp[160 * 160 / 8];

#define BMP_HEIGHT 80
#define BMP_WIDTH  80

/* bmp buffer read through fread */
void show_bitmap()
{
	/* target os need 1BPP */
#define BMP_FILE_SIZE (BMP_HEIGHT * BMP_WIDTH / 8)
	int i, j;
	uint8_t bmp_line_bytes = BMP_WIDTH / 8;

	uint8_t *dst = fp;
	/* the last line in bmp buffer is the line pix buffer */
	const uint8_t *src = bmp_buffer + BMP_FILE_SIZE;

	const uint8_t *bmp_buffer = gImage_logo800;

	src -= bmp_line_bytes;

	for (i = 0; i < BMP_HEIGHT; i++) {
		/* copy bmp buffer line by line */
		for (j = 0; j < BMP_WIDTH / 8; j++){
			*dst++ = *src++;
		}
		src -=2 * bmp_line_bytes;
	}
	
}

/* bmp buffer generate through Image2LCD */
/* Black = 1; White = 0, Keep consistent with Image2LCD */
/* But in Qemu,Black = 0; White = 1 */

void do_bitmap()
{
#define BMP_HEIGHT 80
#define BMP_WIDTH  80
	int i, j, k;

	const uint8_t *src = gImage_logo80;
	uint8_t fg = 1, d;
	uint8_t xor = 0xff;
	uint8_t *dst = fp;
	for (i = 0; i < 80; i++) 
	{
		for (j = 0; j < 80; src++) 
		{
			d = *src ^ xor;
			unsigned char bit = 0;
			/* Image2LCD generate bmp buffer array, 
			 * Pixel sequence in BYTE:MSB...LSB
			 * Horization scan
			 * SCAN from top to bottom and from left to right
			 * 1BPP
			 * */
			for (k = 0; k <= 7; k++) 
			{
				bit = ((d >> k) & 1) ? 1 : 0;
				if (bit == 1)
				{
					*dst |= 1 << k;
				}
				else if (bit == 0)
				{
					*dst &= ~(1 << k);
				}
				j++;
			}
			dst++;
		}
		        
	}
}

