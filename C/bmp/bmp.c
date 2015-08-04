/* xres = 160 */
/* yres = 160 */
uint8_t fp[160 * 160 / 8];

#define BMP_HEIGHT 80
#define BMP_WIDTH  80

uint8_t videoram_get_pixel(int x, int y, uint8_t *buf, uint8_t *index)
{
	#define COLORS	2 /* BLACK && WHITE */
	uint8_t data;
	uint8_t byte;
	unsigned int off;

	off = y * LCD_BPP1_BYTESPERLINE + ((x) >> 3);
	byte = *(buf + off);
	*index = (byte >> (7 - (x & 7))) & 1;
	*index = COLORS -1 - *index;

	data = 0x80 >> ((x & 7));

	return data;
}

uint8_t bitmap_get_pixel(int x, int y, uint8_t *bmp, int bmp_width)
{
	/* #define MONO01 */ /* 1=Black 0=White */

	/* Keep consistent with Qemu */
	#define MONO10 /* 1=White 1=Black */

	uint8_t  data;
	uint8_t  byte;
	unsigned int off;
	uint8_t	 xor;
	uint8_t bmp_line_len;

	/* NOTICE: If bmp file edited by Windows Photoshop or other tools,
	 * Image2LCD need to use "Reverse color"
	 * Because Windows use "1=Black, 0=White"
	 */

#ifdef MONO10
	xor = 0x0;
#else
	xor = 0xFF;
#endif

	bmp_line_len = (bmp_width + 7) >> 3;
	off = y * bmp_line_len + ((x) >> 3);

	byte = *(bmp + off);
	byte = byte ^ xor;

	data = (byte >> (7 - (x & 7))) & 1;
	return data;
}

void videoram_set_pixel(int x, int y, int c, uint8_t *buf)
{
	unsigned int off;
	uint8_t pix;
	
	pix = x & 7;
	off = y * LCD_BPP1_BYTESPERLINE + ((x)>>3);

	c = c & 1;

	if ( c == 1) {
		*(buf + off) |= 1 << (7 - pix);
	} else if (c == 0) {
		*(buf + off) &= ~ (1 << (7 - pix));
	}
}

/* draw a vertical line */
static int draw_vline(int x1, int y1, int x2, int y2, xxx_color_t line_color)
{
	int len = 0;
	int i;
	int ret = 0;
	uint8_t* buf8 = NULL;

	if (x1 >= DISPLAY_SIZE_X)
	  return -1;

	if (y1 >= DISPLAY_SIZE_Y || y2 >= DISPLAY_SIZE_Y)
	  return -1;

	if (x1 != x2)
		return -1;

	if (y1 > y2)
		return -1;

	len = y2 - y1 + 1;

	buf8 = xxx_get_fb();

	if (DISPLAY_BPP == 16)
	{
		uint16_t* buf16;
		buf16 = (uint16_t*)buf8;

		if (line_color.type != COLOR_TYPE_16BPP)
		{
			return -1;
		}

		for (i = 0; i < len; i++)
		{
			buf16[DISPLAY_SIZE_X * (y1 + i) + x1] = line_color.value;
		}
	} else if(DISPLAY_BPP == 1) {
		for (i = y1; i <= y2; i++)
		{
			videoram_set_pixel(x1, i, line_color.value, buf8);
		}
	} 
	

	return ret;
}

/* draw a horizontal line */
static int draw_hline(int x1, int y1, int x2, int y2, xxx_color_t line_color)
{
	int len = 0;
	int ret = 0;
	int i;
	uint8_t* buf8 = NULL;

	if (y1 >= DISPLAY_SIZE_Y )
	  return -1;

	if (x1 >= DISPLAY_SIZE_X || x2 >= DISPLAY_SIZE_X)
	  return -1;

	if (y1 != y2)
		return -1;

	if (x1 > x2)
		return -1;

	len = x2 - x1 + 1;

	buf8 = get_fb();

	if (DISPLAY_BPP == 16)
	{
		uint16_t* buf16;
		buf16 = (uint16_t*)buf8;

		if (line_color.type != COLOR_TYPE_16BPP)
		{
			return -1;
		}

		for (i = 0; i < len; i++)
		{
			*(buf16 + DISPLAY_SIZE_X * y1 + x1 + i) = line_color.value;
		}
	} else if(DISPLAY_BPP == 1){
#if 1
		for (i = x1; i <= x2; i++)
		{
			videoram_set_pixel(i, y1, line_color.value, buf8);
		}
#else
		//have some REFRESH issue in this implementation method
		int y = y1;
		uint8_t index;
		uint8_t d;

		for (; x1 <= x2; x1++)
		{
			d = videoram_get_pixel(x1, y, buf8, &index);
			if (index & 1)
			{
				*(buf8 + LCD_BPP1_BYTESPERLINE * y + (x1 >> 3)) |= d;
			}
			else {
				*(buf8 + LCD_BPP1_BYTESPERLINE * y + (x1 >> 3)) &= ~d;
			}
		}
#endif
	}	

	return ret;
}

int draw_pixel(int x, int y, xxx_color_t line_color)
{
	uint8_t* buf8 = NULL;
	int ret = 0;

	buf8 = get_fb();

	if (x < 0 || x >= DISPLAY_SIZE_X || y < 0 || y >= DISPLAY_SIZE_Y)
		return -1;

	if (DISPLAY_BPP == 16)
	{
		uint16_t* buf16;
		buf16 = (uint16_t*)buf8;

		if (line_color.type != COLOR_TYPE_16BPP)
		{
			return -1;
		}

		*(buf16 + DISPLAY_SIZE_X * y + x) = line_color.value;
	} else if (DISPLAY_BPP == 1){
		videoram_set_pixel(x, y, line_color.value, buf8);
	}

	return ret;
}

int draw_line(int x1, int y1, int x2, int y2, xxx_color_t line_color)
{
	int ret;

	ret = 0;

	if (x1 >= DISPLAY_SIZE_X || y1 >= DISPLAY_SIZE_Y)
	  return -1;

	if (x2 >= DISPLAY_SIZE_X || y2 >= DISPLAY_SIZE_Y)
	  return -1;

	if (x1 != x2 && y1!= y2)
		return -1;

	if (x1 == x2)
	{
		draw_vline(x1, y1, x2, y2, line_color);
	} else if (y1 == y2) {
		draw_hline(x1, y1, x2, y2, line_color);
	}

	return ret;
}

int draw_rect(int x1, int y1, int x2, int y2, xxx_color_t line_color)
{
	int ret;

	ret = 0;

	if (x1 == x2 && y1 == y2)
		return -1;

	if (x1 >= DISPLAY_SIZE_X || x2 >= DISPLAY_SIZE_X)
	  return -1;

	if (y1 >= DISPLAY_SIZE_Y || y2 >= DISPLAY_SIZE_Y)
	  return -1;

	draw_hline(x1, y1, x2, y1, line_color);
	draw_vline(x2, y1, x2, y2, line_color);
	draw_hline(x1, y2, x2, y2, line_color);
	draw_vline(x1, y1, x1, y2, line_color);

	return ret;
}

int fill_rect(int x1, int y1, int x2, int y2, xxx_color_t line_color)
{
	int x, y;
	int ret = 0;
	uint8_t* buf8 = NULL;

	if (x1 > x2)
		return -1;

	if (y1 > y2)
		return -1;

	if (x1 >= DISPLAY_SIZE_X || y1 >= DISPLAY_SIZE_Y)
	  return -1;

	if (x2 >= DISPLAY_SIZE_X || y2 >= DISPLAY_SIZE_Y)
	  return -1;

	buf8 = get_fb();

	if (DISPLAY_BPP == 16)
	{
		uint16_t* buf16;
		buf16 = (uint16_t*)buf8;

		if (line_color.type != COLOR_TYPE_16BPP)
		{
			return -1;
		}

		for (y = y1; y <= y2; y++)
		{
			for (x = x1; x <= x2; x++)
			{
				*(buf16 + DISPLAY_SIZE_X * y + x) = line_color.value;
			}
		}
	} else if (DISPLAY_BPP == 1) {
		for (y = y1; y <= y2; y++)
		{
			for (x = x1; x <= x2; x++)
			{
				videoram_set_pixel(x, y, line_color.value, buf8);
			}
		}
	}

	return ret;
}

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

int draw_bitmap(uint8_t* bitmap, int x, int y, int width, int height)
{
	int ret = 0;
	int i, j;
	uint8_t* buf8 = NULL;

	if (width + x < 0 || height + y < 0 || x >= DISPLAY_SIZE_X || y >= DISPLAY_SIZE_Y)
		return -1;

	buf8 = atp_get_fb();

	if (DISPLAY_BPP == 16)
	{
		/* bmp BPP16 buffer generated by bmp2c.py */
		uint16_t* buf16;
		uint16_t* bmp16;
		buf16 = (uint16_t*)buf8;
		bmp16 = (uint16_t*)bitmap;

		for (j = y; j < y + height; j++)
		{
			for (i = x; i < x + width; i++)
			{
				*(buf16 + DISPLAY_SIZE_X * j + i) = *(bmp16 + width * (j - y) + (i - x));
			}
		}
	}
	else if (DISPLAY_BPP == 1) {
		/* 
		 * bmp BPP1 buffer generated by Image2lcd tools
		 * horization scan
		 * scan from top to bottom and from left to right
		 */
#if 1	
		/* This implementation have no REFRESH issue,but have below limit
		 * 1) bmp's width and height is 8 alignment
		 * 2) position (x,y) is 8 alignment
		 */
		uint8_t k;
		for (j = y; j < y + height; j++)
		{
			k = 0;
			for (i = (x >> 3); i < ((x + width) >> 3); i++)
			{
				if (k < (width >> 3))
				{
					*(buf8 + LCD_BPP1_BYTESPERLINE * j + i) = *(bitmap + (width >> 3) * (j - y) + k);
				}else {
					*(buf8 + LCD_BPP1_BYTESPERLINE * j + i) = 0xFF;
				}
				k++;
			}
		}
#else
		/* This implementation have REFRESH issue which try to fix above 8 alignment limit
		 */
		uint8_t data;
		for (j = y; j < y + height; j++)
		{
			for (i = x; i <= x + width; i++)
			{
				data = bitmap_get_pixel(i - x, j - y, bitmap, width);
				videoram_set_pixel(i, j, data, buf8);
			}
		}
#endif
	}

	return ret;
}



/* Patch for Qemu FB driver */
#ifdef FB_1BPP
unsigned short fbs_extend[160 * 160];
#endif
/* in xxx_fb_update_display */
static void xxx_fb_update_display(void *opaque)
{
	... 
	/* some code to get Qemu surface paramer */
	/* such as dst_line, pitch, width, height,
	 * and use Qemu api 
	 * (translate guest os virtual memory addr to host virtual memory addr) 
	 * to get GuestOS video ram ptr */
	/* Patch for support 1BPP emulation */
	uint64_t shared_addr = (uint64_t)ivshmem_get_addr();
	src_line  = (unsigned char*)(shared_addr + base);

#ifdef FB_1BPP
/* Because Qemu dont't support 1BPP, so need to create 
 * a buffer(fbs_extend) to extend GuestOS framebuffer to Qemu 16BPP framebuffer.
 * if don't extend or just extend fbs.dst_pixels,will generate framebuffer corruption,
 * because GuestOS && Qemu Framebuffer driver use share memory.
 * If need 16BPP,dont need extend.
 * because both GuestOS and Qemu use 16BPP memory 
 */
#define GUEST_OS_DISPLAY_XRES	160
#define GUEST_OS_DISPLAY_YRES	160
	/* in guest os, use 1BPP to save memory */
#define HW_FBMEM_SIZE	 160 * 160 / 8
	int  i;
	const uint8_t* src = src_line;
	uint16_t*	dst = fbs_extend;

	int k;
	unsigned char byte;
	unsigned char bit;

	for (i = 0 ; i < HW_FBMEM_SIZE; i++)
	{
		byte = *src;
		bit = 0;
		for (k = 7; k >= 0; k--)
		{
			bit = ((byte >> k) & 1) ? 1 : 0;
			/* expand 1BPP to 16BPP pixel by pixel */
			if (bit == 1)
			{
				*dst++ = 0xFFFF;
			}
			else if (bit == 0)
			{
				*dst++ = 0x0000;
			}
		}
		src++;
	}
#endif

#ifdef FB_1BPP
	fbs.src_pixels = (unsigned char *)fbs_extend;
#else
	fbs.src_pixels = src_line;
#endif
	
	...
	
	dpy_update(surface->ds, rect.xmin, rect.ymin, rect.xmax-rect.xmin, rect.ymax-rect.ymin);
}
