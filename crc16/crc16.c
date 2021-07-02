#define _CRT_SECURE_NO_WARNINGS 1
#include<stdio.h>

unsigned short CRC16(unsigned char* date, unsigned int datelen)
{
    unsigned short tmp = 0xffff;
    unsigned short ret1 = 0;

    for (int n = 0; n < datelen; n++)
    {
        tmp = date[n] ^ tmp;
        for (int i = 0; i < 8; i++)
        {
            if (tmp & 0x01) {
                tmp = tmp >> 1;
                tmp = tmp ^ 0xa001;
            }
            else {
                tmp = tmp >> 1;
            }
        }
    }
    ret1 = tmp >> 8;
    ret1 = ret1 | (tmp << 8);
    return ret1;
}

int main()
{
    unsigned char date[5] = { 0x01,0x04 ,0x02 ,0x04,0xCE };
    int len = sizeof(date) / sizeof(char);
    int crc = CRC16(&date, len);
    printf("%x\n", crc);
    return 0;
}
