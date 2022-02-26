/* file:Kernelc.c */
/* 该程序正常运行的前提是进入32位保护模式，且DS的线性基地址为0x0.*/
void Main(void)
{

int i=0;

for (i=0;i<=10;i++)
{

*(char *)(0xb8000+23*160+i) = 'C';  /*显示位置为第23行*/
*(char *)(0xb8000+23*160+1+i)= 0x0c;
i++;
}

stop:
goto stop;

}