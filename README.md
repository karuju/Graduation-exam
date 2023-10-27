■サービス概要

音楽と、異なるメディアのコンテンツをつなぐ投稿型サービスです。<br>
ユーザーがスレッドを立ててお気に入りの音楽を共有し、他のユーザーがその音楽を聴いてイメージした映画や小説、漫画などの音楽以外のコンテンツを提案する場所。<br>
ユーザーはスレッドを立てる以外に、自分の好きなコンテンツと音楽を紹介する投稿もできます。<br>

<br>
■ このサービスへの思い・作りたい理由

子供のころから何かしら音楽に触れていたので、今も日常的に音楽を聴いています。<br>
その反面、映画を観る機会は少なく、映画館には数年に１回行くか行かないかという状況でした。大学の講義で映画関連のものを受講したこともあり、映画が観たいなという気持ちはいつもありますが、自分に合う映画をなかなか見つけられたことがありません。<br>
新しい漫画や小説を読みたいと思っていますが、あらすじで面白そうだと思って読んでみても、文体や作品の空気感などが好みじゃないな、と思うこともありました。<br>
好きになるアーティストの曲はストーリー性が強いものが多く、こんな内容の映画だったらきっと楽しめるだろう、と思っています。<br>
また、いわゆるイメージソングと呼ばれる、漫画やゲームのキャラクターやその関係性を思い起こさせる曲を探すのも好きです。<br>
友人と話しているとき、わたしの好きな曲に合う漫画があると紹介してくれて、その漫画読むきっかけになったこともありました。
<br>
音楽は短時間で楽しめる一方、映画や小説などは長時間を必要とすることもあるので、普通に勧められても試しに見てみよう、読んでみようという気になりにくいことがよくあるのですが、好きな曲と雰囲気やストーリーが似ているのであれば、視聴のハードルも下がり、新しいコンテンツに出会う機会を増やせると考えました。

<br>
■ ユーザー層について

1. 音楽が好きで音楽以外のコンテンツに触れてみたいと思っている人<br>
...歌詞やメロディ、アレンジや音楽ジャンルなど、好きな音楽にはさまざま要素が含まれているため、好きな音楽には雰囲気や空気感の趣味が反映されると考えています。そのため、音楽を軸に別のコンテンツを探せば、自分の好みに合った新しいコンテンツを見つけやすくなると考えました。<br>
2. 好きなジャンルの布教をしたい人<br>
...1.の理由と同様に、音楽を中心に据えることで、あらすじや紹介文などの文字情報だけでは伝わりにくい作品の雰囲気を伝えることが可能になります。それにより、布教したい対象のコンテンツを知らない人にも興味を持ってもらいやすくなるため、人にコンテンツを紹介しやすくなると考えました。
<br>
<br>


■サービスの利用イメージ<br>
ユーザーは新しいコンテンツと出会うことができ、エンタメの体験を広げられます。<br>
出会ったコンテンツにハマったら生活が楽しくなります。
<br>
<br>
■ ユーザーの獲得について<br>
友人やRUNTEQ生に使ってもらい、Xで共有してもらう
<br>
<br>
■ サービスの差別化ポイント・推しポイント<br>
好きな音楽から似た音楽を紹介したり、映画と映画を結びつけたりする機能はサブスクサービスなどでレコメンドとして実装されていますが、異なるメディア同士をつなぐサービスは自分で検索した限りは見つかりませんでした。<br>
好きな音楽を起点として映画や小説を探すことで、文字情報としてのあらすじや紹介文だけではわからない、作品全体の雰囲気を掴みやすくなり、好みの作品と出会える機会を増やすことができます。
<br>
<br>
■ 機能候補


MVPリリース<br>
- ユーザー登録(閲覧は誰でも可能)<br>
- スレッドの作成…好きな音楽を投稿する<br>
- 回答...投稿に対して回答する<br>
- 投稿...スレッドとは別で、好きなコンテンツと音楽を紹介する投稿
- 検索<br>
- お気に入り<br>
- 投稿された曲をSpotifyやYoutubeから取得してリンクを表示する<br>
- シェア...スレッドと投稿ごとにシェアボタンを作る
- リスト...好きなアーティストをリストに入れる


本リリース<br>
- 通知...回答が来たとき、お気に入りされたとき、リストに入れたアーティストに関する曲のスレッドが立ったとき<br>
- レコメンド...お気に入りしたスレッドをもとに、別のスレッドや投稿をレコメンドする
- 回答された映画や小説の商品ページのリンクを表示する<br>
<br>
<br>
■ 機能の実装方針予定

楽曲情報の取得...Spotify APIとYoutube data API<br>
書籍情報の取得...楽天ブックス書籍検索API<br>
映画情報の取得...TMDb API<br>
通知...LINE Messaging API SDK for Ruby<br>
フロントにはReactを使用予定。画面のイメージとしては、https://designnokoto.com/ のようにジャケット写真がサムネイル形式で表示されるようにしたいと考えています。
レコメンド...協調フィルタリングやコンテンツベースフィルタリング
