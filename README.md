# リズム道 rhythmdo.com 律武道 奥義

## このリポジトリの意味

このリポジトリは、リズム道/律武道(https://rhythmdo.com/) の内容を管理しているリポジトリです。リズム道で扱う内容は全てこのリポジトリに保存されています。

リズム道の奥義は全て公開されています。何も知識がない初心者の状態からニューヨークを飛び越えてアフリカで演奏活動することに充分な技量を身につける為に必要な知識を全てここで公開しています。

しかしこの膨大な知識を身に付けることは全く容易なことでは有りません。それはまるで六法全書を全て暗記して理解するのと同じほどの努力が必要となるでしょう。そしてそうやって理解した知識を習得することには、更に想像を絶する長い年月が必要となる筈です。

この長い道のりを極めるための武道として私は、**律武道**を創始しました。

この書に書いてあることはあたかも『ラジオ体操を毎日やって健康になろう』ということと同じことです。『ラジオ体操を毎日やって健康になろう』という言葉を読んでそれを暗記しても、健康になることはありません。

本当に大切なことは実践にあります。理論を学ぶだけでなく実践を心がけるようにして下さい。

リズム道の奥義は、超グルーヴ理論です。超グルーヴ理論はオープンソースで無料で公開されています。

しかし超グルーヴ理論を実際に実践する為には、十億円を出しても決して買うことは出来ない貴方の覚悟という掛け替えのない犠牲が必要になるのです。

再度申し上げます。

ここに書いてあることは全て無意味なことです。

それを実践する貴方にしか価値はないのです。


### 技術的な説明

このリポジトリは基本的に Quarto と呼ばれるwebパブリッシング・システムを使って管理されています。 Quarto では管理しきれないライフサイクルなどを[Rhythmpress](https://github.com/ats4u/rhythmpress) と呼ばれるCMSシステムを使って管理しています。Rhythmpress は リズム道/律武道を管理する為に専用に作られたCMSシステムです。

全てのファイルは QMD ファイルで作成されています。 多くの図説（画像/譜面) はQuarto 上のフィルタとして書かれたプログラムによって自動的に生成されています。./filters/ ディレクトリに全てのフィルタが保存されていますので、そちらを参照して下さい。

### メモ

#### How to Create a Rhythmpress project

Currently the easiest way to create a repository is replicating preexisting project.

```
rsync -av $SRC/filters/             $DST/filters/
rsync -av $SRC/.assets/             $DST/.assets/
rsync -av $SRC/assets/              $DST/assets/
rsync -av $SRC/.github/             $DST/.github/
rsync -av $SRC/requirements.txt     $DST/requirements.txt
rsync -av $SRC/_metadata.yml        $DST/_metadata.yml
rsync -av $SRC/_variables.yml       $DST/_variables.yml
rsync -av $SRC/_quarto.yml          $DST/_quarto.yml
rsync -av $SRC/_redirects           $DST/_redirects
rsync -av $SRC/_rhythmpress.conf    $DST/_rhythmpress.conf
mkdir $SRC/attachments
mkdir $SRC/attachments-src

```

```
cat <EOF > .gitignore
/_site
/.site
/.quarto/
/_freeze/
.DS_Store
*.~undo-tree~
.venv
.obsidian
.vscode/
__pycache__
*_files
*.generated.yml
*.generated.md
.toc_title_cache.json
_sidebar-*.yml
*.generated.conf
*.bak
EOF
```

You have to installl its dependencies before activating it.
```
python3 -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
git clone git@github.com:ats4u/rhythmpress.git $HOME/rhythmpress
pip install -e $HOME/rhythmpress
```

#### How to Start a Preview Server on the Project

In order to activate the project, do following:

```
. .venv/bin/activate
eval "$(rhythmpress eval)"
```

There are two servers.

One of them is automatic rebuilding server.

```
rhythmpress auto-rebuild
```

One of them is the preview server.
```
rhythmpress start
```

In order to deactivate the project, do following:
```
rhythmpress_deactivate
deactivate
```


#### How to Add an Article

```sh
ARTICLE_NAME="foo-bar"

# 1. Create a directory
mkdir "$(ARTICLE_NAME)"
cd "$(ARTICLE_NAME)"

# 2. Create .gitignore and .article_dir
# rhythmpress won't automatically clean the directory when there is no
`.article_dir` in the directory

touch .article_dir

# 3. Create .gitignore
echo <<EOF > .gitignore
attachment/*
attachment-src/*
*/
EOF
```

### hello


<!--
We use a project-local virtual environment (`.venv`) to run Python in Quarto dynamic blocks.

Use the procedure below to recreate the `.venv` environment.

```python
# 0) From your project root
deactivate 2>/dev/null || true
rm -rf .venv

# 1) Create + enter venv
python3 -m venv .venv
source .venv/bin/activate

# 2) Make sure pip works (and fix SSL on some macOS set-ups)
python -m ensurepip --upgrade
export SSL_CERT_FILE="$(python - <<'PY'
import pip._vendor.certifi as c; print(c.where())
PY
)"
unset SSL_CERT_DIR REQUESTS_CA_BUNDLE CURL_CA_BUNDLE

# 3) Upgrade basics
python -m pip install --upgrade pip setuptools wheel

# 4) Install the minimal Quarto stack
# (ipykernel = Jupyter kernel; nbformat/nbclient = execute blocks; PyYAML = your parser)
python -m pip install ipykernel nbformat nbclient jupyter_client jupyter_core pyyaml

# 5) (Optional) any tools you use in .qmd cells
# python -m pip install pandas matplotlib

# 6) Register the kernel so Quarto picks the right Python
python -m ipykernel install --user --name rhythmpedia --display-name "Python (.venv)"

# 7) Sanity checks
python - <<'PY'
import sys, yaml
print("Python:", sys.version.split()[0])
print("PyYAML:", yaml.__version__)
PY

# 8) Ask Quarto to verify Python wiring
quarto check python
```

Merge pull request #85 from ats4u/master
Remove HTML Comment in ATX headers.  Replace *.md into *.qmd. Added Automatic Builder.
73748632ec8beb86a5e907a42f2ce8905bcd2b03

fix broken index page of sub pages
7ad02f5f1bbbcd15ba8f03b06abbb86525e66111

make dark-mode more darker
3230cd1aec7259752e7399d32cac5b78a7309c78

add sidebar-confs to aggregate all _sidebar-[langid].yml
21b3a9fef32a46f4e4ab1ecade7eff72d32f1471
-->
