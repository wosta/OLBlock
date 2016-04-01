# 有关block的学习
[这是一篇很棒的文章，基本概念很清楚](http://www.strongx.cn/?p=49)   
[还有这篇文章](http://blog.csdn.net/enuola/article/details/8674063) 开头还是很诡异的   

```objc
	// 总觉得很诡异 很奇怪吧？后面的小括号里面的5会被当成a的输入值，然后经由Block输出 5*5 = 25指定给result这个变量。
	int result = ^(int a){return a*a;}(5); 
	NSLog(@"%d", result);
```

