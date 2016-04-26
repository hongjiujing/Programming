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
 * if don't extend or just extend fbs.dst_pixels,will generate framebuffer corruption with skin support
 * because if need skin,skin fn process path will generate timing issue between SDL draw and Qemu    
 * framebuffer driver  
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
