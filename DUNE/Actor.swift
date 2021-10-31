//
//  Actor.swift/Users/user03/Downloads/Dune Cast
//  BookApp
//
//  Created by User03 on 2021/10/30.
//

import Foundation
//I choose actor name as computed property.
struct Actor: Identifiable {
    var id: String { name }
    let name: String
    let cast_name: String
    let actor_bio: String
    let cast_bio: String
}
extension Actor {
    static let testRow = Actor(
        name: "Timothée Chalamet",
        cast_name: "Paul Atreides",
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
    )
}

