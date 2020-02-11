# 1 安装依赖项  

```shell
sudo apt install openjdk-8-jdk git m4 make g++-multilib gcc-multilib lib32ncurses5-dev lib32z1-dev
```

# 2 配置 repo 

请参考： [https://mirrors.tuna.tsinghua.edu.cn/help/AOSP/](https://mirrors.tuna.tsinghua.edu.cn/help/AOSP/) 

# 3 同步源码  

```shell
repo init -u https://aosp.tuna.tsinghua.edu.cn/platform/manifest -b android-7.1.2_r39
```


# 4 编译 

```shell
source build/envsetup.sh
lunch aosp_arm-eng
m
```