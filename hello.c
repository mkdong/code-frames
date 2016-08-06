#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("MK");
MODULE_DESCRIPTION("Linux kernel modules code-frames.");


int __init hello_init(void)
{
	pr_info("Hello World!\n");
	return 0;
}

void __exit hello_exit(void)
{
	pr_info("Bye World!\n");
}

module_init(hello_init);
module_exit(hello_exit);
