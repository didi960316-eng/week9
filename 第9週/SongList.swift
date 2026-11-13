import SwiftUI

struct SongList: View {
    let songs = [
        Song(
            name: "indigo",
            description:
                "接續爆紅單曲〈drunk text〉的故事，敘述當初因害怕破壞關係而未說出口的心意，如今對方已另覓幸福的深切遺憾。歌名以深邃憂鬱的「靛藍色」形容對方迷人卻令人心碎的雙眼，將錯過真愛的懊悔與深陷回憶中的惆悵詮釋得淋漓盡致。",
            releaseDate: "2025/03/28",
            image: "indigo"
        ),
        Song(
            name: "sunday morning",
            description:
                "描寫當代年輕人在派對與曖昧關係中的情感掙扎。原本雙方約定只是一場不談承諾的週末狂歡，自己卻情不自禁陷入真感情；然而狂歡過後的週日早晨，面對未曾響起的手機，只能獨自承受從微醺跌回現實的孤單與失落，道盡暈船的酸楚。",
            releaseDate: "2025/08/01",
            image: "sunday morning"
        ),
        Song(
            name: "MISS U",
            description:
                "這是一首以輕快節奏包裹深情依戀的思念之歌，描寫遠距離戀愛中的煎熬與甜蜜。歌詞以幽默的反諷唱出「我只有在早晚、平日和週末才想你」，實則傾訴自己無時無刻、無論清醒或夢境都被對方佔滿，將分隔兩地卻依然堅定的愛意展露無遺。",
            releaseDate: "2026/05/15",
            image: "miss u"
        ),
        Song(
            name: "closure",
            description:
                "深刻剖析和平分手帶來的無解之痛。不同於充滿背叛或爭執的告別，當彼此都沒有犯錯卻漸行漸遠時，反而因缺乏恨對方的理由而更難放下；歌詞甚至絕望地渴望對方能做出殘忍的事，好讓自己能徹底死心，道盡了想要釋懷卻無能為力的深沉哀傷。",
            releaseDate: "2023/10/13",
            image: "closure"
        ),
        Song(
            name: "comedown",
            description:
                "以派對狂歡後的「墜落期」為隱喻，描繪熱戀時如登雲端的狂喜，以及隨之而來的強烈不安。對方如同治癒一切的良藥，讓人沉醉其中不願清醒；然而飛得越高越害怕摔得粉身碎骨，深刻刻劃出深愛一個人時，伴隨極致幸福而生的患得患失與脆弱。",
            releaseDate: "2025/06/13",
            image: "comedown"
        ),
        Song(
            name: "right person, wrong time",
            description:
                "觸碰了愛情中最無奈的遺憾——「在錯的時間遇見對的人」。歌曲敘述年少時相遇的兩人，雖有著無可挑剔的契合度，卻因不夠成熟或現實命運而分開；多年後回首，心中依然保留著那份悸動，並溫柔期盼著在未來的某一天，命運終會讓兩人重新交會。",
            releaseDate: "2024/08/16",
            image: "right person, wrong time"
        ),
        Song(
            name: "eighteen",
            description:
                "發行於 Henry Moodie 19 歲生日當天，是一首道出邁入成年階段迷惘與焦慮的成長之作。剛滿十八歲的他，面對社會期待與對未來的未知，內心依舊感到惶恐與不安；歌曲以真誠筆觸唱出介於孩子與大人之間的拉扯，深深撫慰了每一個在成長中迷失的靈魂。",
            releaseDate: "2023/04/07",
            image: "eighteen"
        ),
        Song(
            name: "drunk text",
            description:
                "Henry Moodie 的全球爆紅代表作。描述在深夜微醺之際，壓抑不住內心對暗戀對象的渴望，試圖藉著醉意傳送告白訊息，卻又因害怕破壞友誼而在最後一刻退縮。真實道出害怕被拒絕的脆弱與酸澀，引發全球數百萬聽眾的深刻共鳴。",
            releaseDate: "2023/01/27",
            image: "drunk text"
        ),
        Song(
            name: "pick up the phone",
            description:
                "一首溫暖而充滿關懷的心靈之歌。寫給正處於人生低潮、深受心理健康與焦慮所困的朋友或自己。歌詞懇切地呼籲「請接起電話」，傳達出你並不孤單、總有人在身旁守候並願意傾聽的心意，為深陷黑暗的心靈帶來陪伴的力量。",
            releaseDate: "2023/05/12",
            image: "pick up the phone"
        ),
        Song(
            name: "favorite mistake",
            description:
                "探討明知沒有未來卻依然深陷的危險關係。即使理智清楚這段感情終將帶來傷害，卻仍情不自禁地一次次淪陷其中，甘願將這段飛蛾撲火般的經歷稱作「最美麗的錯誤」，生動描繪了在誘惑與後悔之間反覆拉扯的情感羈絆。",
            releaseDate: "2024/04/19",
            image: "two"
        ),
        Song(
            name: "cigarette",
            description:
                "將令人著迷卻有害的愛情隱喻為香煙。明知對方如尼古丁般危險且容易上癮，吸入後只會帶來傷害與空虛，卻依舊戒不掉對這份溫存的渴望。全曲透過深情的吉他旋律與充滿自省的歌詞，深刻刻畫出愛情中難以自拔的內心掙扎。",
            releaseDate: "2024/09/27",
            image: "two"
        ),
    ]
    var body: some View {
        NavigationStack {
            List(songs) { song in
                NavigationLink {
                    songdetail(song: song)
                } label: {
                    Text(song.name)
                }
            }
            .scrollContentBackground(.hidden)
            .background {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            }
            .navigationTitle("推薦歌曲列表")
        }
    }
}

#Preview {
    SongList()
}
