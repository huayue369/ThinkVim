
## ThinkVim 

Hybrid                                                                                | taigacute/space-vim-theme
:----:                                                                                | :----:
![](https://github.com/taigacute/ThinkVim/blob/master/screenshot/thinkvim.png) | ![](https://github.com/taigacute/ThinkVim/blob/master/screenshot/space-thinkvim.png)

### Gif
![](https://github.com/taigacute/ThinkVim/blob/master/screenshot/231.gif)
## [Switch English](https://github.com/taigacute/nvim-config/blob/master/README-EN.md) 

## FAQ
### 1.和 Spacevim，Space-vim 有什么区别？
* 这个配置只是我自己的配置。与 Spacevim Space-vim 不同，它们可以说是个项目了。我的有很多需要你自己改。我只是提供一个模块的小巧以管理的配置。只是取了个名字，然后我的配置没那么多方便的功能，比如简单的管理想添加什么只需要设置 layer 或者其他 easy 的操作，我的要你自己添加插件配置插件改动文件。大家的触发点不一样。但是都是 vim 的爱好者。
* 我的出发点是我觉得 vim 不折腾就没了意义。追求 vim 是把它打造成自己喜欢的工具。包括它的每一寸肌肤。对吗？？我相信应该有和我一样不愿意使用别人配置的人你们应该能明白的。

### 2.我自己的配置就很好，为什么要看你的配置？
你的配置你很满意的情况下你完全可以不用看我的配置。如果你想拆分一下变得模块化组件化易于管理摆脱冗长的 init.vim ，你可以参考我的配置或许对你有帮助

### 3.新手能用吗？
个人觉得对新手比较友好，而且我还在 b 站出了视频如何使用修改成自己的配置。

### 4.看到很多插件和工具我都要用吗?
不是，其实里面有几个是重复的，我没删掉。因为我觉得你们有自己的喜好和习惯。不用就删掉。喜欢就留着用

### 5.我觉得里面插件的功能不好用或者太老了怎么办？
你想怎么改就怎么改。它没有那些项目级别那么复杂。我只是留一些基础的或者我觉得好用的还行的我在用的。
### 6.ag和rg如何选择？
ag和rg都是很棒的grep，我自己用的是rg，thinkvim中有ag也有rg，我推荐用rg看你的喜好与习惯，不用的就删除即可。

## 特性
- 模块插件配置
- 懒加载百分之85插件
- 启动速度快
- 完全自定义
- LSP语言服务支持

## 必要环境
* macos or linux  (windows上需要修改一些变量）
* neovim
* python3 support
* node and yarn
* NerdFont
### 必要工具

- ag (The Silver Searcher): [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- rg (Ripgrep): [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- Universal ctags: [ctags.io](https://ctags.io/)
- Rouge : `sudo gem install rouge`

## 安装
```
git clone --depth=1 https://github.com/taigacute/nvim-config.git ~/.config/nvim
```
**_1._** clone完成后打开你的终端或者GUI，输入nvim，会自动安装dein插件管理  
**_2._** 安装完成后，检测插件是否安装进行安装，由于国内clone较慢建议全局方式科学   
**_3._** 安装coc中间件，在normal模式输入`:CocInstall coc-neosnippet` `CocInstall coc-emmet`  
**_4._** 如果你要使用Defx和Denite等需要python3支持的插件，你需要在normal模式输入`:UpdateRemotePlugins`  
**_For go_** 执行`go get -u github.com/sourcegraph/go-langserver` 安装go server。默认的coc-settings.json已配置goserver

## 结构

- [rc/](~/.config/nvim/rc) - 配置文件目录
  - [dein](~/.config/nvim/rc/dein)  - _**插件安装!**_
    - [dein.toml](~/.config/nvim/rc/dein/dein.toml)     - 正常加载的插件
    - [deinlazy.toml](~/.config/nvim/rc/dein/deinlazy.toml) - 懒加载插件
  - [ftplugin](~/.config/nvim/rc/ftplugin) - 文件类型设置
  - [plugins](~/.config/nvim/rc/plugins) - _**插件设置!**_
  - [init.vim](~/.config/nvim/rc/init.vim) - `runtimepath` 初始化
  - [dein.vim](~/.config/nvim/rc/dein.vim) - Dein 配置
  - [general.vim](~/.config/nvim/rc/general.vim) - Vim基础设置
  - [mappings.vim](~/.config/nvim/rc/mappings.vim) - Vim功能键位绑定
  - [themes](./config/theme.vim) - 主题颜色
- [colors](~/.config/nvim/colors) - 主题文件



## 正常加载插件
Name           | Description
-------------- | ----------------------
[scrooloose/nerdcommenter] | 注释插件
[itchyny/lightline.vim] | 状态栏
[mengelbrecht/lightline-bufferline] | 顶部buffer插件
[taigacute/spaceline.vim] | lightline主题插件自制
[vim-airline/vim-airline]（已注释） | 状态栏
[vim-airline/vim-airline-theme]（已注释）| airline主题插件
[tpope/vim-fugitive] | git插件 
[sbdchd/neoformat] | 格式化插件
[yonchu/accelerated-smooth-scroll] | 平滑滚动插件 
[junegunn/fzf] |  搜索插件
[junegunn/fzf.vim] | 搜索插件
[ryanoasis/vim-devicons] |  字体图标
[mhinz/vim-startify] | 启动画面


## 懒加载插件
Name           | Description
-------------- | ----------------------
[Yggdroot/indentLine] | 缩进线
[tpope/vim-surround] |  符号成双成对
[tpope/vim-repeat] | 重复上一次操作
[neoclide/coc.nvim] | 补全插件
[liuchengxu/vim-which-key] | 键位查找
[easymotion/vim-easymotion] | 快速移动
[scrooloose/nerdtree] | 文件管理
[tiagofumo/vim-nerdtree-syntax-highlight] | nerdtree高亮
[Shougo/defx.nvim] | 文件管理(更高效)
[kristijanhusak/defx-icons] | defx图标
[airblade/vim-gitgutter] | git信息
[majutsushi/tagbar] | 代码变量函数跳转显示插件
[mattn/emmet-vim] | 快速生成html插件
[Raimondi/delimitMate] | 符号补全插件
[Shougo/neosnippet.vim] | 代码片段
[Shougo/neosnippet-snippets] | 代码片段
[Shougo/denite.nvim] | 搜索插件
[ctrlpvim/ctrlp.vim] |  搜索插件
[w0rp/ale] | 语法检查
[othree/html5.vim] | html5插件 
[pangloss/vim-javascript] |  js插件
[maxmellon/vim-jsx-pretty] |  react插件
[mxw/vim-jsx] | react插件
[hail2u/vim-css3-syntax] | css语法检查
[ap/vim-css-color] | css颜色显示
[fatih/vim-go] | go开发必备插件
[elzr/vim-json] | json插件
[cespare/vim-toml] | toml文件高亮插件

## 选择你的喜好
* [Nerdtree](https://github.com/scrooloose/nerdtree) Or [Defx](https://github.com/Shougo/defx.nvim)
  * 默认文件管理插件为defx，如果你想使用nerdtree，修改deinlazy.toml，注释defx，或者同时使用.
* [Lightline](https://github.com/itchyny/lightline.vim) Or [Airline](https://github.com/vim-airline/vim-airline)
  * 默认的状态栏插件为lightline，如果你想使用airline，修改deinlazy.toml，取消airline以及vim-airline-theme并注释lightline。  
  _**NOTE!!Airline 需要更多的启动时间相比lightline**_  
  _**NOTE!!Defx与nerdtree同时使用，如果只是用其中一个可以注释掉另一个**_
## 键位操作
默认leader为`,` localleader`;` 关于键位的设置在mapping.vim，插件的键位设置在allkey.vim。根据你的习惯修改任意你喜欢的键位
## Language Support
语言工具支持，在coc.nvim主页查找你的开发语言server，并修改`coc-settings.json`添加你的语言服务器。
## 自定义
* 插件
   * 你可以添加任何你喜欢的插件,根据需求功能确定为正常加载或者懒加载，我更建议设置懒加载不会降低vim的启动速度也可以避免vim性能损耗卡顿，注意插件的键位设置应该在 `allkey.vim`.
* 颜色
   * 将你喜欢的 `colorscheme` 放到Colors文件夹中，然后修改 `themes/theme.vim`.默认主题为[taigacute/space-vim-theme](https://github.com/space-vim-theme)，如果你想使用hybrid在theme.vim中修改即可，colors文件夹中已带此主题。

## Backers


## Donation
  * 如果对你有帮助，You Can Buy Me a Coffee By WeChat:)  
  ![](https://github.com/taigacute/ThinkVim/blob/master/screenshot/wechat.png)
## 教程
   * 你可以在[B站查看使用教程](https://www.bilibili.com/video/av43675350/)
## Feedback
  * 如果你遇到了麻烦可以提issue或者 [Giiter](https://gitter.im/thinkvim/community)
## 鸣谢
* [rafi](https://github.com/rafi/vim-config)
* [Shougo](https://github.com/Shougo)

