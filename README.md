# 安装教程  
  
https://goushi.me/terminal-shell-vim  
  
# 使用教程  
  
https://goushi.me/vim  
  
# 目录结构  
  
(父目录为 `~/.vim`)  
（可参考 [这里](http://learnvimscriptthehardway.stevelosh.com/chapters/42.html) 或者 [这里](http://www.panozzaj.com/blog/2011/09/09/vim-directory-structure/)）  
  
* `vimrc`  
  基本的 Vim 配置  
  （插件的配置分开存放在 `.pack` 目录里）  
  
* `gvimrc`  
  GVim 的专属配置  
  
* `pack`  
  用 Vim 8 原生的 [packages](https://shapeshed.com/vim-packages/) 特性加载插件  
  * `pack/xxx/start/` 下的插件 yyy 会在打开 Vim 时自动加载  
    （不过插件里的 autoload 目录依然会按需实时加载，所以插件放在 `start` 里也不会明显拖慢 Vim 的启动）  
  * `pack/xxx/opt/` 下的插件 zzz 则需要在 Vim 里执行命令 `:packadd zzz` 后才会被加载  
  
  然后可以对插件进行分类分目录存放  
  比如 `appearance` 目录里存放了外观相关的插件  
  
* `.pack`  
  （可以自己写 [脚本](https://gist.github.com/d9f571575827d5032a23f23ae365da37) 方便下载、更新插件）  
  我这里用了别人写好的脚本 [pack](https://github.com/maralla/pack)    
  这个目录存放了 pack 的配置信息：  
  * `packfile`  
    用 pack 安装插件时添加的参数都会保存在这个文件里  
    所以只要保留了这个文件，执行命令 `pack install` 就可以把所有插件装回来  
    （**注意**：该插件有个 Bug：安装 已安装的插件 会把该插件在 `packfile` 中的相关信息删掉，见我发的 [issue](https://github.com/maralla/pack/issues/25)，暂时还没回复233）  
  * `xxx-yyy.vim`  
    通过 `pack config xxx/yyy` 命令添加的插件配置将保存在这个文件  
    （并且会自动调用 `pack generate` 命令，把全部 `xxx-yyy.vim` 文件整合成一个文件 `plugin/_pack.vim`）  
  
  
* `plugin`  
  执行`pack generate` 命令（一般会被自动执行）将把 `.pack` 目录里的文件整合成该目录下的一个文件 `_pack.vim`  
  
* `after/ftplugin`  
  存放针对各文件类型的自定义配置  
  
* `compiler`  
  比如里面有个 `python3.vim` 文件  
  则可在 Vim 里执行 `:compiler python3` 来设置 `makeprg` `errorformat` 等  
  
* `swap`  
  统一存放所有交换文件  
  
* `spell`  
  存放 拼写检查 添加的字典文件  
  
* `session`  
  存放 session 文件  
  
* `indexer-tags`  
  存放插件 [vim-indexer](https://github.com/alvan/vim-indexer) 自动生成的 ctags 文件  
  
* `tags`  
  存放手动生成的 ctags 文件（比如 `stdc++.tags`）  
  
* `file-headers`  
  存放自定义的文件头  
  
* `UltiSnips`  
  存放自定义的 `snip` 文件  
  
* `undo-history`  
  存放所有文件的可持久 `undo` 历史  
  (可持久指退出后再进来依然保持)  
  
* `yankring_history_v2.txt`  
   [YankRing](https://github.com/vim-scripts/YankRing.vim) 插件可持久化粘贴版  
  
* `.ycm_extra_conf.py`  
  全局默认 YCM 配置文件  
  
* `build-color_coded.sh`  
  color_coded 插件的自动编译脚本  
  （不需要手动执行）  
  
* `color_coded.vim`  
  自定义 color_coded 的高亮颜色  
  （需要被 `build-color_coded.sh` 复制进 `pack/highlight/opt/color_coded` 里面）  