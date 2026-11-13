//
//  aboutHenry.swift
//  第9週
//
//  Created by 115-1Student14 on 2026/11/13.
//

import SwiftUI

struct FunFact: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
    let description: String
}

struct aboutHenry: View {
    let funFacts: [FunFact] = [
        FunFact(
            title: "密集恐懼症與唱片公司的牆",
            icon: "eye.slash.fill",
            description:
                "Henry 坦承自己有輕微的密集恐懼症。令人哭笑不得的是，他簽約的唱片公司走廊上偏偏有一面滿是密集圓孔的裝飾牆，導致他每次經過時都必須把頭轉開閉上眼睛！"
        ),
        FunFact(
            title: "學生時代最差的科目竟是英文",
            icon: "book.closed.fill",
            description:
                "雖然現在以細膩動人的歌詞創作著稱，但 Henry 透露他在學校最差的科目竟然是「英文」！相反地，他最好的是音樂和地理，求學時期他還曾是一名認真的競技游泳選手。"
        ),
        FunFact(
            title: "超大聲的後台開嗓儀式",
            icon: "cup.and.saucer.fill",
            description:
                "每次登台演出前，Henry 一定要喝綠茶並大聲開嗓發聲。因為每次都太投入且聲音響亮，巡演到後期，連隨行團隊和樂手都把整套發聲旋律背了下來，常在後台跟著他一起大合唱！"
        ),
        FunFact(
            title: "從臥室直衝兩萬人 O2 體育館",
            icon: "music.mic",
            description:
                "成名前 Henry 都是在自家臥室對著手機鏡頭唱歌。簽約後不久，他受邀擔任知名樂團 The Vamps 巡演的暖場嘉賓，直接站上能容納兩萬人的倫敦 O2 體育館舞台，讓他直呼像做夢一樣不可思議。"
        ),
        FunFact(
            title: "不折不扣的「超級泰勒絲迷」",
            icon: "guitars.fill",
            description:
                "Henry是Taylor Swift的頭號鐵粉！他多次表示泰勒絲是啟發他寫作最重要的偶像，他經常學習她如何將私密日記般的心情化為全民大合唱的金曲。"
        ),
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 28) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Henry的成名之路")
                        .font(.title)
                        .fontWeight(.bold)

                    Text(
                        "英國創作歌手 Henry Moodie 出生於 2004 年，自 11 歲起便藉由寫歌抒發情感。疫情期間，他在自家臥室自彈自唱流行歌曲並上傳至 TikTok，憑藉溫暖深情的嗓音與極具共鳴的真摯演繹迅速爆紅，累積數百萬粉絲，成為英國最受矚目的新星之一。2022 年他正式簽約唱片公司，發行在臥室獨立創作製作的首支單曲〈you were there for me〉；隨後描繪暗戀心聲的抒情神曲〈drunk text〉更在東南亞及全球榜單橫掃破億串流，成功從臥室音樂人躍升為舉辦全球巡演的新世代流行偶像。"
                    )
                    .font(.title3)
                    .lineSpacing(7)
                    .foregroundStyle(.secondary)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(.secondarySystemBackground))
                    )
                }

                // Henry 的有趣小故事
                VStack(alignment: .leading, spacing: 12) {
                    Text("Henry的有趣小故事")
                        .font(.title)
                        .fontWeight(.bold)

                    TabView {
                        ForEach(funFacts) { fact in
                            VStack(alignment: .leading, spacing: 14) {
                                HStack(spacing: 10) {
                                    Image(systemName: fact.icon)
                                        .font(.title2)
                                        .foregroundStyle(.tint)
                                    Text(fact.title)
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                                Text(fact.description)
                                    .font(.body)
                                    .lineSpacing(5)
                                    .foregroundStyle(.secondary)
                                Spacer()
                            }
                            .padding(20)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                            .background(
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color(.secondarySystemBackground))
                            )
                            .padding(.horizontal, 4)
                        }
                    }
                    .tabViewStyle(.page)
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                    .frame(height: 240)
                }
            }
            .padding()
        }
        .background {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    aboutHenry()
}
