# Hard Margin Support Vector Machine

# points and images
v{1} = [1, 2, 3, 1, 1, 3, -1, -3;-1, 0, -2, -0.5, -4, -3, -3,-3];
u{1} = [-1, -1, 0, 1, -3, -4, 0.5, 3, 0.5;0, 1, 2, 3, 0, -2, 2, 2.5, 2.5];
![1](./images/img1.png "1")

---
set rng(14175332)
----

u{2} = 10.1 * randn(2,20)+15;
v{2} = -10.1 * randn(2,20)-15;
![2](./images/img2.png "2")

u{3} = 10.1 * randn(2,20)+10;
v{3} = -10.1 * randn(2,20)-10;
![3](./images/img3.png "3")

u{4} = 10.1 * randn(2,50)+18;
v{4} = -10.1 * randn(2,50)-18;
![4](./images/img4.png "4")