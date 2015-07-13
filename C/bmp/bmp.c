/* xres = 160 */
/* yres = 160 */
uint8_t fp[160 * 160 / 8];

#define BMP_HEIGHT 80
#define BMP_WIDTH  80

void show_bitmap()
{
	/* Target os is 1BPP */
#define BMP_FILE_SIZE (BMP_HEIGHT * BMP_WIDTH / 8)
	int i, j;
	uint8_t bmp_line_bytes = BMP_WIDTH / 8;

	uint8_t *dst = fp;
	/* the last line in BMP buffer is the line pix buffer */
	const uint8_t *src = bmp_buffer + BMP_FILE_SIZE;
	const uint8_t *bmp_buffer = gImage_logo801;

	src -= bmp_line_bytes;

	for (i = 0; i < BMP_HEIGHT; i++) {
		/* copy bmp buffer line by line */
		for (j = 0; j < BMP_WIDTH / 8; j++){
			*dst++ = *src++;
		}
		src -=2 * bmp_line_bytes;
	}
	
}
