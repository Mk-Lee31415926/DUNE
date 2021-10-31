//
//  CastList.swift
//  BookApp
//
//  Created by User03 on 2021/10/30.
//

import Foundation
import SwiftUI

struct CastList: View{
    let actors = [
        Actor(name: "Timothée Chalamet", cast_name: "Paul Atreides",
              actor_bio: """
              Timothée Hal Chalamet was born in Manhattan, to Nicole Flender, a real estate broker and dancer, and Marc Chalamet, a UNICEF editor. His mother, who is from New York, is Jewish, of Russian Jewish and Austrian Jewish descent. His father, who is from Nîmes, France, is of French and English ancestry. He is the brother of actress Pauline Chalamet, a nephew of director Rodman Flender, and a grandson of screenwriter Harold Flender.
              
              He grew up in an artistic family, appearing in commercials and the New York theatre scene, and attending the LaGuardia High School of Music, Art and Performing Arts, where his classmate and friend was actor Ansel Elgort (the two later received their first Golden Globe nominations in the same year, 2017). For a time, Timothée also attended Columbia University.

              He made his film debut in 2014, as a high school student in Jason Reitman's 雲端男女 (2014) and Matthew McConaughey's character's teenage son in 星際效應 (2014). He subsequently had sizable roles in several indie films, playing the younger version of writer Stephen Elliott in The Adderall Diaries (2015), the male lead, Zac, in the drama One and Two (2015), and Billy in the road trip drama Miss Stevens (2016). On stage, he has appeared in the plays The Talls, by Anna Kerrigan, and John Patrick Shanley's autobiographical Prodigal Son, while on television, he has had a minor role in the film Loving Leah (2009), a big part in 法網遊龍 (1990), and meatier roles on the shows 上流名醫 (2009) and 反恐危機 (2011), among other work.

              He broke out in 2017, appearing in notable supporting roles, as a soldier in the western 敵對分子 (2017) and a high school crush of the title character in 淑女鳥 (2017), and in a leading role as Elio, an Italian Jewish seventeen year-old who romances his father's older assistant, played by Armie Hammer, in the Luca Guadagnino drama 以你的名字呼喚我 (2017). Timothée's role as Elio received significant critical acclaim, and he was nominated for the Academy Award for Best Actor, and the Golden Globe Award for Best Actor, Drama, and won many critics' groups' awards for Best Actor of the Year.

              In 2018, he starred as Nic Sheff, who suffers from substance abuse problems, in the drama 美麗男孩 (2018). In 2019, he will headline the Woody Allen comedy 雨天．紐約 (2019), with Selena Gomez, play Henry V of England, King from 1413 to 1422, in the historical drama 國王 (2019), and embody love interest Laurie in Greta Gerwig's take on 她們 (2019).
              """,
              cast_bio: """
              The protagonist of Dune. Paul is the son of Duke Leto Atreides and is the heir to the House of the Atreides. At the beginning of the novel, Paul is fifteen years old. He has been trained from birth to fulfill the role of duke, and he is adept at combat and strategic thinking. Paul is also a quiet, thoughtful, and observant young man. Paul is not overly tall or muscular, but he is strong and quick. Among the Fremen, Paul has two names: Usul, which signifies strength, and Muad’Dib, the name of the desert mouse on Arrakis.
              """
        ),
        Actor(name: "Rebecca Ferguson", cast_name: "Lady Jessica Atreides",
              actor_bio: """
              Rebecca Ferguson was born Rebecca Louisa Ferguson Sundström in Stockholm, Sweden, and grew up in its Vasastaden district. Her father is Swedish. Her mother, Rosemary Ferguson, is British, of Scottish and Northern Irish descent, and moved to Sweden at the age of 25. Rebecca attended an English-speaking school in Sweden and was raised bilingual, speaking Swedish and English. As a student, she attended the Adolf Fredrik's Music School in Stockholm and graduated in 1999.

              She came into prominence with her breakout role of upper-class girl Anna Gripenhielm in the soap-opera Nya tider (1999), when she was 16 years old.

              She lives in the seaside town of Simrishamn, on the Swedish south coast. Ferguson has said she wanted to get away from city life and the public spotlight following her soap opera success. Swedish director Richard Hobert, spotted her at the town market in 2011, which led to her starring in his film En enkel till Antibes (2011).

              Ferguson taught Argentinian Tango at a dance company in Sweden for a few years.

              In 2013, Rebecca played Queen Elizabeth Woodville in the BBC historical drama 白皇后 (2013), for which she got a Golden Globe nomination.

              In 2015, Ferguson played Ilsa Faust, the female lead in 不可能的任務：失控國度 (2015). Her co-star, Tom Cruise, chose her for the film after having seen her in the mini-series 白皇后 (2013). Her performance in the movie was highly praised and Rebecca will reprise her role in the sixth Mission: Impossible film.

              In 2016, she starred in Despite the Falling Snow (2016), 走音天后 (2016) and 列車上的女孩 (2016).

              Her upcoming projects are 異星智慧 (2017), 雪人 (2017), 大娛樂家 (2017), The Lady and the Panda and 不可能的任務：全面瓦解 (2018).
              - IMDb Mini Biography By: Polly_Kat
      """,
              cast_bio: """
              Paul’s mother. Jessica is the concubine of Duke Leto Atreides. Though she acts like a wife to Leto and he has no other concubines, she is not married to Leto. Jessica is a member of the Bene Gesserit, a school that teaches and practices what many others think of as witchcraft. An orphan who never knew her parents, Jessica is tall and slender, with bronze-colored hair and green eyes.
              """
        ),
        Actor(name: "Zendaya", cast_name: "Chani",
              actor_bio: """
              Zendaya (which means "to give thanks" in the language of Shona) is an American actress and singer born in Oakland, California. She began her career appearing as a child model working for Macy's, Mervyns and Old Navy. She was a backup dancer before gaining prominence for her role as Rocky Blue on the Disney Channel sitcom Shake It Up (2010) which also includes Bella Thorne, Kenton Duty and Roshon Fegan. Zendaya was a contestant on the sixteenth season of the competition series Dancing with the Stars. She went on to produce and star as K.C. Cooper in the Disney Channel sitcom K.C. Undercover (2015) She made her film breakthrough in 2017, starring as Michelle "MJ" Jones in the Marvel Cinematic Universe superhero film 蜘蛛人：返校日 (2017) and as Anne Wheeler in the musical drama film 大娛樂家 (2017) alongside actors such as Tom Holland, Hugh Jackman and Zac Efron. Besides acting, singing and dancing she is an ambassador for Convoy of Hope. She has written a book, launched her own clothing line (Daya by Zendaya) and proved herself to be a great role model for young girls all around the world.
              - IMDb Mini Biography By: Mymble Ansdal
      """,
              cast_bio: """
              Daughter of Liet-Kynes. Chani is one of the Fremen and has some of the skills of the Bene Gesserit. She is Paul’s age and gives birth to his first child.
              """
        ),
        Actor(name: "Oscar Isaac", cast_name: "Duke Leto Atreides",
              actor_bio: """
              Oscar Isaac was born Óscar Isaac Hernández Estrada in Guatemala, to a Guatemalan mother, María Eugenia, and a Cuban father, Oscar Gonzalo Hernández-Cano, a pulmonologist. Oscar was raised in Miami, Florida. Before he became an actor, he played lead guitar and sang vocals in his band the Blinking Underdogs. He graduated from the Juilliard School in 2005.

              Isaac's first major film role was Joseph in the film The Nativity Story (2006). He also had a small role in All About the Benjamins (2002) and the Ché Guevara biopic Guerrilla (2011). In addition to movie appearances, he made an appearance in the television series Law & Order: Criminal Intent (2001). He also had a part in the movies The Life Before Her Eyes (2007); 謊言對決 (2008), alongside Leonardo DiCaprio and Russell Crowe; 風暴佳人 (2009), alongside Rachel Weisz; and the Australian film Balibo (2009), where he played José Ramos-Horta, former president of East Timor, set amid the Indonesian invasion of East Timor in 1975; Isaac won the Australian Film Institute Award for Best Supporting Actor for the role.

              In 2013, Oscar starred in the Coen Brothers' folk music-themed comedy-drama, 醉鄉民謠 (2013), for which he received a Golden Globe Award nomination. He subsequently starred in the crime drama 暴力年代 (2014) and the science fiction thriller 人造意識 (2014), and appeared in the Star Wars films STAR WARS：原力覺醒 (2015) and 星際大戰：最後的絕地武士 (2017), as X-wing pilot Poe Dameron, and the ninth X-Men film, X戰警：天啟 (2016), as the mutant supervillain Apocalypse. He has also headlined the HBO miniseries 黑色烏托邦 (2015), as politician Nick Wasicsko in 2015, which earned him the Golden Globe Award for Best Actor - Miniseries or Television Film.

              He has two sons with his wife, Danish director Elvira Lind.
              - IMDb Mini Biography By: Ângela Oliveira and Pedro Borges
      """,
              cast_bio: """
              Paul’s father. Duke Leto Atreides is the head of the House of Atreides and the rightful ruler of Arrakis. The duke received Arrakis from the emperor in exchange for Leto’s own planet of Caladan, which was given to the duke’s mortal enemy, Baron Harkonnen. The duke is a wise, intelligent, and compassionate man, but he is ruthless when it comes to dealing with his enemies. He cares very much for his concubine, Jessica, and their son, Paul.
              """
        ),
        Actor(name: "Jason Momoa", cast_name: "Duncan Idaho",
              actor_bio: """
              Joseph Jason Namakaeha Momoa was born on August 1, 1979, in Honolulu, Hawaii. He is the son of Coni (Lemke), a photographer, and Joseph Momoa, a painter. His father is of Native Hawaiian and Samoan descent; and his mother, who is from Iowa, is of German, Irish, and Native American ancestry. Jason was raised in Norwalk, Iowa, by his mother. After high school, he moved to Hawaii, where he landed a lead role, beating out of thousands of hopefuls in the TV series Baywatch (1989) (known as "Baywatch Hawaii" in its 10th season). When the show ended, he spent the next couple of years traveling around the world. In 2001, he moved to Los Angeles, where he continued to pursue an acting career. In 2004, after the short-lived TV series North Shore (2004), he was cast as the popular character "Ronon Dex" in the TV series Stargate: Atlantis (2004), which achieved a cult-like following. In 2010, he appeared in the Emmy-nominated HBO series 冰與火之歌：權力遊戲 (2011), playing the Dothraki king, Khal Drogo. To illustrate to the producers that he was Khal Drogo, he performed the Haka, a traditional war dance of the Maori of New Zealand. The audition was with the same casting director who was casting the titular role in the reboot of 王者之劍3D (2011). Four weeks after being cast as the popular Robert E. Howard character, Momoa began shooting in Bulgaria. His approach, like that of the filmmakers, was to pull from the eight decades of comics and stories as well as the Frank Frazetta images rather than the hugely popular 1982 movie. Jason has a production company, Pride of Gypsies, in which he is expanding his career from actor to filmmaker. He has directed a couple of short films and is working on his feature film debut Road to Paloma (2014), which is pulled from a series of stories that he's been developing over the years, which he calls the Brown Bag Diaries: Ridin' the Blinds in B Minor (2010). Jason lives with his wife, actress Lisa Bonet, with whom he has two children, Lola and Nakoa-Wolf.
              - IMDb Mini Biography By: Keith Simanton
      """,
              cast_bio: """
              Duke Leto’s swordmaster. Duncan is a skilled warrior and a faithful servant of the duke and his family.
              """
        ),
        Actor(name: "Stellan Skarsgård", cast_name: "Baron Vladimir Harkonnen",
              actor_bio: """
              Stellan Skarsgård was born in Gothenburg, Västra Götalands län, Sweden, to Gudrun (Larsson) and Jan Skarsgård. He became a star in his teens through the title role in the TV-series Bombi Bitt och jag (1968). Between the years 1972-88 he was employed at The Royal Dramatic Theatre in Stockholm, where he participated in "Vita rum" (1988), August Strindberg's "Ett drömspel" (1986) and "Mäster Olof" (1988). Simultaneously Skarsgård did outstanding film roles, notably in Den enfaldige mördaren (1982) by Hans Alfredson and with Fred Ward in American Playhouse: Noon Wine (1985). The fantastic performance gave him both a well-earned Guldbagge and Silver Berlin Bear. He portrayed the Skagen-painter Sören Kröyer in Hip hip hurra! (1987) and the Swedish ambassador Raoul Wallenberg in God afton, Herr Wallenberg (1990), both directed by Kjell Grede. Täcknamn Coq Rouge (1989) and Den demokratiske terroristen (1992) he played Jan Guillou's Swedish superagent Carl Hamilton. He also had the leading part in the Oscar nominated 公牛 (1991) directed by the world-famous cinematographer Sven Nykvist. Skarsgård did his first (but small) role in an big American film with 布拉格的春天 (1988). The role of Captain Tupolev in 獵殺紅色十月 (1990) was at supposed to be biggest part in a Hollywood-film, but unfortunately it was cut down. His breakthrough instead came with Lars von Trier's 破浪而出 (1996) opposite newcomer Emily Watson. After that Skarsgård got several supporting roles in American films, such as in My Son the Fanatic (1997), Gus Van Sant's 心靈捕手 (1997) and Steven Spielberg's 勇者無懼 (1997).
              - IMDb Mini Biography By: Fredrik Klasson <fredrik.klasson@boras.mail.telia.com>

              Stellan Skarsgård is a Swedish actor. He is known for his roles as Jan Nyman in 破浪而出 (1996), Prof. Gerald Lambeau in 心靈捕手 (1997), Bootstrap Bill in 加勒比海盗－ 神鬼奇航2 (2006) and 加勒比海盗－ 神鬼奇航：世界的盡頭 (2007), Bill Anderson in 媽媽咪呀！ (2008) and 媽媽咪呀！回來了 (2018), Martin Vanger in 千禧三部曲Ⅰ：龍紋身的女孩 (2011), and Dr. Erik Selvig in the Marvel Cinematic Universe films 雷神索爾 (2011), 復仇者聯盟 (2012), 雷神索爾2：黑暗世界 (2013), and 復仇者聯盟2：奧創紀元 (2015).

              Skarsgård's first American film was the 1985 film American Playhouse: Noon Wine (1985), directed by Michael Fields, in which Skarsgård played a mentally-disturbed immigrant farmhand being chased by a bounty hunter. He acted opposite Fred Ward, who portrayed the farmer. In 1990 he starred in another American film, 獵殺紅色十月 (1990), playing the character of Captain Tupolev, a Soviet submarine commander.

              Skarsgård is particularly associated with director Lars von Trier and has appeared in seven of the Danish auteur's features: 醫院風雲 (1994), 破浪而出 (1996), 在黑暗中漫舞 (2000), 厄夜變奏曲 (2003), 驚悚末日 (2011), 性愛成癮的女人（上） (2013) and 性愛成癮的女人（下） (2013).
              - IMDb Mini Biography By: Pedro Borges
      """,
              cast_bio: """
              Leader of the House of Harkonnen. The baron is the mortal enemy of the House of Atreides. The baron is very fat, and his bulk is supported by electronic suspenders.
              """
        ),
        Actor(name: "Stephen McKinley Henderson", cast_name: "Thufir Hawat",
              actor_bio: """
              Stephen McKinley Henderson was born on August 31, 1949 in Kansas City, Missouri, USA. He is an actor, known for 心靈圍籬 (2016), 淑女鳥 (2017) and 林肯 (2012). He has been married to Pamela Reed Henderson since April 22, 1978.
      """,
              cast_bio: """
              Duke Leto’s master of assassins. Hawat is a well-known Mentat, or a person trained to act completely logically. He serves as Leto’s main strategist and confidant. Hawat is old, having served three generations of Atreides. He has also trained Paul in combat and tactics.
              """
        ),
        Actor(name: "Josh Brolin", cast_name: "Gurney Halleck",
              actor_bio: """
              Rugged features and a natural charm have worked for Josh Brolin, the son of actor James Brolin. He has played roles as a policeman, a hunter, and the President of the United States.

              Brolin was born February 12, 1968 in Santa Monica, California, to Jane Cameron (Agee), a Texas-born wildlife activist, and James Brolin. Josh was not interested at first in the lifestyle of the entertainment business, in light of his parents' divorce, and both of them being actors. However, during junior year in high school, he took an acting class to see what it was like. He played Stanley in "A Streetcar Named Desire" and became hooked. His first major screen role was as the older brother in the film 七寶奇謀 (1985), based on a story by Steven Spielberg. He then immediately moved on to work on television, taking roles on such series as Private Eye: Pilot (1987) and The Young Riders (1989). "Private Eye" was a chance for Brolin to play a detective. "The Young Riders" was set just before the Civil War, and was co-directed by Brolin's father, James Brolin.

              After The Young Riders (1989), Brolin moved back to the big screen, with mediocre success. He played a supporting role in The Road Killers (1994), but the film was not a success. He followed up with the crime film Gang in Blue (1996), the romantic film Bed of Roses (1996), the thriller film 看誰在尖叫 (1997), and appeared with his father in My Brother's War (1997). However, nothing truly stuck out, especially not the box office flop 掃蕩三人組 (1999). The 2000s initially brought no significant change in Brolin's career. He appeared in the independent film Slow Burn (2000), the sci-if thriller 透明人 (2000) and starred on the television series Mister Sterling (2003). In 2004, he married actress Diane Lane and are still together.

              It was not until 2007 that Brolin received much acclaim for his films. He took a supporting role in the Quentin Tarantino-written 刑房 (2007) which was a two-part film accounting two horror stories. He also played two policemen that year: corrupt officer Nick Trupo in the crime epic 美國黑幫 (2007), and an honest police chief in the emotional drama 震撼效應 (2007) which starred Tommy Lee Jones and was directed by Paul Haggis. However, it was his involvement in 險路勿近 (2007) that truly pushed him into the limelight. The film, directed by the Coen brothers, was about a man (Brolin) who finds a satchel containing two million dollars in cash. He is pursued by an unstoppable assassin (Javier Bardem, who won an Oscar for his work) and his friend, a local sheriff (Tommy Lee Jones). The film won four Oscars, including Best Picture and Best Director.

              Brolin found high-profile work the next year, being cast as Supervisor Dan White in the film 自由大道 (2008). His performance as the weak and bitter politician earned him an Oscar nomination, and Brolin received more praise for his fascinating portrayal of George W. Bush in the Oliver Stone film 喬治．布希之叱吒風雲 (2008). Despite the mediocre success of 喬治．布希之叱吒風雲 (2008), he was recognized as the best part of the film, and 自由大道 (2008) was another triumph, critically and commercially.

              Brolin then acted in the smaller comedy Women in Trouble (2009) before landing a number of large roles in 2010. The first of these was the film based on the comic book figure 疤面鬼煞手 (2010). The film was a box office flop and critically panned, but Brolin also forged a second collaboration with legendary director Oliver Stone for 華爾街：金錢萬歲 (2010). Brolin played a large role alongside such young stars as Carey Mulligan and Shia LaBeouf, and older thespians such as Michael Douglas, Eli Wallach, and Frank Langella. Brolin's character was Bretton James, a top banker in the film, and also the film's chief antagonist. Brolin also appeared in Woody Allen's London-based film 命中注定，遇見愛 (2010) and a second collaboration with the Coen Brothers, which was a remake of 大地驚雷 (1969).

              Despite his earlier mediocre success and fame, Brolin has maintained a choosiness in his films and, recently, these choices have paid off profoundly. Hopefully, he continues this streak of good fortune that his talents have finally given him.
              - IMDb Mini Biography By: Bob Stage
      """,
              cast_bio: """
              Duke Leto’s master of arms, or war master. Halleck is well trained in the use of numerous weapons, and he is particularly good at swordplay with the use of personal electronic body shields. He is fond of music and plays the baliset, a guitarlike instrument. He has trained Paul in the art of personal combat and is an old friend of the Atreides’s.
              """
        ),
        Actor(name: "Javier Bardem" , cast_name: "Stilgar",
              actor_bio: """
              Javier Bardem belongs to a family of actors that have been working on films since the early days of Spanish cinema.

              He was born in Las Palmas de Gran Canaria, Spain, to actress Pilar Bardem (María del Pilar Bardem Muñoz) and businessman José Carlos Encinas Doussinague. His maternal grandparents were actors Rafael Bardem and Matilde Muñoz Sampedro, and his uncle is screenwriter Juan Antonio Bardem. He got his start in the family business, at age six, when he appeared in his first feature, "El picaro" (1974) (A.K.A. The Scoundrel). During his teenage years, he acted in several TV series, played rugby for the Spanish National Team, and toured the country with an independent theatrical group. Javier's early film role as a sexy stud in the black comedy, Jamón Jamón (1992) (aka Ham Ham) propelled him to instant popularity and threatened to typecast him as nothing more than a brawny sex symbol. Determined to avert a beefcake image, he refused similar subsequent roles and has gone on to win acclaim for his ability to appear almost unrecognizable from film to film. With over 25 movies and numerous awards under his belt, it is Javier's stirring, passionate performance as the persecuted Cuban writer, Reynaldo Arenas, in 在夜幕降臨前 (2000) that will long be remembered as his breakthrough role. He received five Best Actor awards and a Best Actor Oscar nomination for his portrayal.
              - IMDb Mini Biography By: Dana Spiardi/<fabdana@hotmail.com>
      """,
              cast_bio: """
              A leader of the Fremen, the native people of Arrakis who live in the desert. Stilgar is wise, experienced, and familiar with the legends and folklore of the Fremen.
              """
        ),
        Actor(name: "Sharon Duncan-Brewster", cast_name: "Dr. Liet Kynes",
              actor_bio: """
              Sharon Duncan-Brewster was born on February 8, 1976 in London, England. She is an actress, known for 沙丘 (2021), 星際大戰外傳：俠盜一號 (2016) and Imagine Me & You (2005).
      """,
              cast_bio: """
              Planetologist for Arrakis, or an ecologist for planets. Unknown to the Harkonnens, Liet is also a member of the Fremen. He works with the Fremen to change Arrakis from a desert planet into a lush, green paradise.
              """
        ),
        Actor(name: "Chang Chen", cast_name: "Dr. Wellington Yueh",
              actor_bio: """
              Chang Chen, an international renowned actor, first earned his attention at the age of 14 when he took the lead role in A Brighter Summer Day. Since then, he was nominated three times at the Golden Horse Awards, and several times for best actor at the Berlinale and the Cannes Film Festival. He won Best Actor at the 3rd Osaka Asia Film Festival for his performance in The Go Master.

              Chang's outstanding versatile performance, coupled with his diligent learning attitude, made him the favorite cast of world's renowned directors. His dedication to filmmaking is seen not only in how he strives to improve his acting skills, but also the initiatives he had taken in learning local Uyghur language and horse riding for Crouching Tiger, Hidden Dragon, the game of go and meditation for The Go Master, and three years of practice bajiquan (martial arts) for the The Grandmaster which he later won first prize in a recognized competition.

              In 2017, Chang's performance in Mr. Long was nominated for the 67th Berlinale international film festival in official competition.

              In 2018, Chang was the only Asian actor who served as one of the juries at the 71st Cannes Film Festival.
              - IMDb Mini Biography By: Project House
      """,
              cast_bio: """
              The Atreides’s doctor. Yueh betrays the Atreides to the Harkonnens. His betrayal is particularly shocking because at this time, doctors of the Suk School are supposed to be heavily psychologically conditioned to never cause harm.
              """
        ),
        Actor(name: "Dave Bautista" , cast_name: "Beast Rabban Harkonnen",
              actor_bio: """
              David Michael Bautista, Jr. was born on January 18, 1969 in Washington, D.C., to Donna Raye (Mullins) and David Michael Bautista, a hairdresser. He has Filipino and Greek ancestry.

              When WCW officials told him he'd never make it in sports entertainment, Bautista pushed himself to achieve his dream of being a Superstar. In May 2002, he made his debut on SmackDown using the ring name Batista, but it wasn't until a move to Raw and two victories over Kane that "The Animal" began to make noise in the WWE Universe. The wins impressed Ric Flair and Triple H, who were looking to align themselves with the industry's brightest new stars. After a lengthy search, they identified Randy Orton and Batista. Collectively the four Superstars became known as Evolution.

              Batista earned his first championship alongside "The Nature Boy" when the duo captured the WWE Tag Team Championships in December 2003. As Evolution dominated WWE, Batista started to emerge from the shadows of Triple H and Ric Flair. By the time Batista won the 2005 Royal Rumble Match, World Heavyweight Champion Triple H viewed him as a serious threat to his title.

              After a triceps injury at the hands of Mark Henry forced Batista to relinquish the title in January 2006, he vowed to return. Batista successfully regained the World Heavyweight Championship at Survivor Series in 2006. Four months into his second reign, Batista faced the Undertaker at WrestleMania 23. "The Animal" took Undertaker to the limit, but was unable to stop the streak of "The Deadman" at WrestleMania. Though disappointed, Batista stayed hungry and always managed to keep himself in the championship hunt for the rest of his career.

              At Bragging Rights in 2009, Batista shocked the world when he blamed Rey Mysterio for a loss to Undertaker, then attacked his former tag team partner. "The Animal" then became locked in a tense rivalry with another former friend, John Cena, over the WWE Championship. The grueling match at Over the Limit led to a wheelchair-bound Batista declaring "I quit!" the following night on Raw before fading from the WWE Universe in May 2010. Following his departure from WWE, Bautista appeared opposite Vin Diesel in the Universal film 超世紀戰警：闇黑對決 (2013) and RZA's feature directorial debut The Man with the Iron Fists (2012), in which he played the villainous Brass Body and starred opposite Russell Crowe and Lucy Liu. His other film credits include The Scorpion King 3: Battle for Redemption (2012), where he played Argomael; the action film House of the Rising Sun (2011); and Wrong Side of Town (2010) opposite rapper Ja Rule.

              Two years later, he joined MMA and won his first professional MMA fight. In January 2014, he made his long awaited return to the WWE, before quitting a second time in June of that same year. He did this in order to promote 星際異攻隊 (2014), which was released on August 1, 2014, and starred Chris Pratt, Benicio Del Toro, Zoe Saldana, and Djimon Hounsou, alongside Bautista.

              He will shoot Kickboxer: Vengeance (2016), directed by John Stockwell, and co-starring martial artist Alain Moussi and UFC fighter Georges St-Pierre. The remake of the 1989 Jean-Claude Van Damme film, Kickboxer (1989) is about two brothers David and Kurt Sloan; When David wins the Karate World Championship, a promoter lures him to Hong Kong, despite his brother's protestations that the man is a crook. When Kurt travels to Thailand to meet his brother, he discovers he has died and seeks his revenge.

              After starring in films such as, 星際異攻隊2 (2017), 銀翼殺手2049 (2017), 復仇者聯盟：無限之戰 (2018), Hotel Artemis (2018), 鋼鐵墳墓2 (2018), and Final Score (2018), he made a special guest appearance on WWF SmackDown! (1999) for it's 1000 episode reuniting with his former Evolution members Triple H, Randy Orton, and Ric Flair on October 16, 2018. The following year on February 25, 2019, he made his return to WWE Monday Night RAW (1993) when he attacked Ric Flair on his 70th birthday at the end of the episode sending a message to Triple H that would ultimately lead to a No Holds Barred match for WrestleMania 35 (2019). Batista added the stipulation that if he wins the match, Triple H will have to retire from in-ring competition. As a result, Triple H was finally able to beat Batista for the first time and won the match, which ultimately led to Batista announcing his official retirement from wrestling in the WWE. Following his retirement, he will continue with his career as an actor in Hollywood.

              His next films scheduled for release will be; Stuber (2019), 復仇者聯盟：終局之戰 (2019), 鋼鐵墳墓3 (2019), and 間諜速成班 (2020). He is one of many professional wrestlers to make the smooth transition from wrestling into the entertainment world.
              - IMDb Mini Biography By: Revitalizations@aol.com and jmmeisner@gmail.com
      """,
              cast_bio: """
              A nephew of Baron Harkonnen’s. Before the novel begins, Rabban is the ruler of Arrakis. When the Atreides take over Arrakis, he must step down. However, Rabban rules Arrakis again after the Harkonnens seize back Arrakis.
              """
        ),
        Actor(name: "David Dastmalchian", cast_name: "Piter de Vries",
              actor_bio: """
              David Dastmalchian is originally from Kansas. He moved to Chicago, IL, to study acting at The Theatre School, DePaul University. After college, David worked as a professional fisherman in Alaska, a circus performer, movie theatre usher and playwright. He is an ensemble member of Shattered Globe Theatre Company and Caffeine Theatre in Chicago.
              - IMDb Mini Biography By: J. Stagmeyer
      """,
              cast_bio: """
              Baron Harkonnen’s Mentat, a human trained to think logically, rationally, and mathematically to be the perfect adviser. Piter is ambitious and scheming, two emotional traits that are unusual and not desired in a Mentat.
              """
        ),
        Actor(name: "Charlotte Rampling", cast_name: "Reverend Mother Mohiam",
              actor_bio: """
              Tessa Charlotte Rampling was born 5 February 1946 in Sturmer, England, to Isabel Anne (Gurteen), a painter, and Godfrey Lionel Rampling, an Olympic gold medalist, army officer, and colonel, who became a NATO commander. She was educated at Jeanne d'Arc Académie pour Jeunes Filles in Versailles, France and at the exclusive St. Hilda's school in Bushey, England. She was a model before entering films in Richard Lester's The Knack ...and How to Get It (1965), followed by roles in Georgy Girl (1966) and Luchino Visconti's 納粹狂魔 (1969). Rampling is best known for her role in Liliana Cavani's Il portiere di notte (1974), where she played a concentration camp survivor who is reunited with the Nazi guard (Dirk Bogarde) who tortured her throughout her captivity. In 1974, she co-starred with Sean Connery in John Boorman's science fiction adventure Zardoz (1974), with Robert Mitchum in Farewell, My Lovely (1975), with Woody Allen in his 星塵往事 (1980), and with Paul Newman in Sidney Lumet's 大審判 (1982). An actress always willing to take on bold and meaningful roles, Rampling had perhaps the most off-beat one in Nagisa Ôshima's 1986 comedy Max mon amour (1986) as Margaret, a woman in love with a chimpanzee. She has also voiced video games, such as The Ring.
              - IMDb Mini Biography By: Anonymous
      """,
              cast_bio: """
              Spiritual leader of the Bene Gesserit. Mohiam is old and serves as the emperor’s truthsayer, a person who can tell the emperor whether someone is lying. Before he leaves for Arrakis, Mohiam puts Paul through a severe test of endurance.
              """
        )
    ]
    
    var body: some View{
        NavigationView {
            List{
                ForEach(actors){ actor in
                    
                    // link no effect..
                    NavigationLink(
                        destination: ActorDetail(actor: actor),
                        label: {
                            CastRow(actor: actor)
                        }
                    )
                }
            }
            .navigationTitle("Cast intro")
        }
    }
}
