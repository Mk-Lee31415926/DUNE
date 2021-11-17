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
    let actor_link: String
}
extension Actor {
    static let testRow = Actor(
        name: "Timothée Chalamet",
        cast_name: "Paul Atreides",
        actor_bio: """
        Timothée Hal Chalamet was born in Manhattan, to Nicole Flender, a real estate broker and dancer, and Marc Chalamet, a UNICEF editor. His mother, who is from New York, is Jewish, of Russian Jewish and Austrian Jewish descent. His father, who is from Nîmes, France, is of French and English ancestry. He is the brother of actress Pauline Chalamet, a nephew of director Rodman Flender, and a grandson of screenwriter Harold Flender.
        
        In 2018, he starred as Nic Sheff, who suffers from substance abuse problems, in the drama 美麗男孩 (2018). In 2019, he will headline the Woody Allen comedy 雨天．紐約 (2019), with Selena Gomez, play Henry V of England, King from 1413 to 1422, in the historical drama 國王 (2019), and embody love interest Laurie in Greta Gerwig's take on 她們 (2019).
""",
        cast_bio: """
        The protagonist of Dune. Paul is the son of Duke Leto Atreides and is the heir to the House of the Atreides. At the beginning of the novel, Paul is fifteen years old. He has been trained from birth to fulfill the role of duke, and he is adept at combat and strategic thinking. Paul is also a quiet, thoughtful, and observant young man. Paul is not overly tall or muscular, but he is strong and quick. Among the Fremen, Paul has two names: Usul, which signifies strength, and Muad’Dib, the name of the desert mouse on Arrakis.
        """,
        actor_link: "https://developer.apple.com/documentation/swiftui/link"
        
    )
}

