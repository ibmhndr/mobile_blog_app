class Article {
  String id;
  String title;
  String categories;
  String author;
  String authorPhoto;
  List <String> articleBody;
  String date;
  String readTime;
  String imageAsset;

  Article({
    required this.id,
    required this.title,
    required this.categories,
    required this.author,
    required this. authorPhoto,
    required this.articleBody,
    required this.date,
    required this.readTime,
    required this.imageAsset,
  });
}

var articleList = [
  Article(
    id: '0',
    title: 'A Simple Workout That Makes a Huge Difference',
    categories: 'Sport',
    author: 'Anna Maltby',
    authorPhoto: 'https://miro.medium.com/fit/c/262/262/1*2HE3F9PxcdPFCxC5jVvFmg.png',
    articleBody: [
      "I had a big and difficult decision to make last week, and as the little bubble of anxiety in my gut "
          "grew bigger and bubblier as the deadline approached, I could just feel it in every cell: "
          "I had to move. I was accomplishing absolutely nothing by refreshing Twitter and checking "
          "for new Slack DMs, and my body knew my only option was to expel the nervous energy on a walk."
          "I downloaded a calming playlist, set off on a brisk pace, and spent a few minutes just moving fast, "
          "breathing deeply, and doing a body scan to tap into the present moment. I’m not a big meditator, but I "
          "knew I could use this walk for something more than just exercise, and those brief moments of mindfulness "
          "were enough to bring me back to myself. I trudged up the hilly paths of Green-Wood Cemetery, "
          "noticing the small buds appearing on the trees and reflecting on just how different this spring might be "
          "from the last one. I marveled that all of this — fresh air, green spaces, movement — was free, right there "
          "for the taking whenever I needed it. I knew I’d be okay no matter what final choice I came to.",

      "I know this is annoyingly simple — go for a stupid walk! — but sometimes in moments of crisis those basic "
          "tenets of self-care (drink some water, get some sunlight, move your body) somehow go straight out the "
          "window, and you reach for everything that makes you feel worse. I’m not about to tell you that I didn’t"
          " also have one or two too many drinks just a few hours after this magical walk, or wake up at 4:00 a.m. "
          "and spend an hour doomscrolling, but still — the walk really helped. And of course, even if you aren’t "
          "facing down an existential crisis, walking is just plain good for you. One study found that women who walk"
          " 4,400 steps per day have a 41% lower risk of premature death than those who get fewer than 2,700, and the "
          "pace doesn’t even matter. Fast, slow; steps are steps.",

      " If you’re able to walk, you don’t need me to tell you how to do it. Just breathe and go, for however long "
          "you can and at whatever pace feels good. Walk toward something good.",
    ],

    date: 'Apr 5',
    readTime: '2',
    imageAsset: 'https://miro.medium.com/max/3000/1*4HJQafpDb16vgkyNnmxEhA.gif'
  ),

  Article(
      id: '1',
      title: 'We’re Overworked, and Everyone Just Needs to Lie Down',
      categories: 'Hobby',
      author: 'Kaki Okumura',
      authorPhoto: 'https://miro.medium.com/fit/c/262/262/1*HQTxFkIf5fymNTatLc0qjA.jpeg',
      articleBody: [
        "'Lying flat is my wise movement,'",

        "It’s a quote from a user on the since-deleted post on the Chinese discussion forum Tieba, "
            "on how instead of participating in a capitalist society, they were going to live it out by ‘lying flat’.",

        " The words for lying flat in Chinese are tang ping, and it has since become a popular social protest buzzword by "
            "young Chinese on societal pressures, and the value in choosing a more low-profile, modest lifestyle. People are choosing "
            "to not get married, to not have kids, to not have a job, and to have as little material things as possible.",

        "What surprised me most about reading about this phenomenon was my reaction to it: Yeah, I get it.",

        "This trend is not too different from Japan’s version of hikikomori, or young people who become recluses in their parent’s home, and refuse to leave their room for months or years at a time. Although there is a slight but powerful difference between the two ideas, "
            "in that while being a hikikomori is not always a voluntary choice, tang ping is a choice of empowerment.",

        "To be happy, people need to rest — there is no way around it. They say that if you do work that you love that you will never work a day in your life, but even people who have their dream jobs will learn to hate it if it burns them out. And these social protesters who are choosing ‘tang ping’, "
            "well they are just trying to do what makes them happiest, and that is a very natural thing for any person to do.",

        "It’s easy to dismiss people, especially young people, who seemingly reject hard work or refuse to participate in society as lazy, "
            "but you don’t need to agree with tang ping to understand where it’s coming from, and why we need to be paying attention to it. Competition starts at an increasingly younger and younger age, cram schools are the norm and not the exception, and spending your 20s working 12-hour days is not unheard of.",

        "Tang ping’s existence is similar to why restrictive diets or fanatical fitness regimes gain popularity, even though they have no sustainable credibility. People pushed to their limit will often go to the extreme for a solution — because when taken over the edge, "
            "extreme solutions seem like the only viable solution.",

        "Yet the real solution lies somewhere less revolutionary.",

        "It’s not as simple as instructing people to sleep earlier at night or installing nap pods in the office. Ideally it will come from a place where schools and workplaces encourage a society that allows room for creativity, risk, fun, and exploration without the repercussions of falling behind. More likely it will start from a place where individuals take it into their own hands to identify their values, "
            "priorities, and ease the pressure on themselves independent of what others expect of them.",

        "It’ll take some social rejection and discomfort — no one associates working hard with knowing when to rest. "
            "But hard work, like all things, is best accomplished in moderation."
      ],

      date: 'July 16',
      readTime: '3',
      imageAsset: 'https://miro.medium.com/max/875/1*vXd43E2-PjWJ6nWm9ymb_g.png'
  ),

  Article(
      id: '2',
      title: 'Why Smart Girls Think Body Positivity is a Lie',
      categories: 'Self',
      author: 'Nandini Maharaj, PhD',
      authorPhoto: 'https://miro.medium.com/fit/c/262/262/1*czZKrriMGHVEvYzqeCHM7w.jpeg',
      articleBody: [
        "I brace myself for the onslaught of comments. The inflammatory posts from instigators who wage cowardly battles "
            "against confident women who aren’t ashamed of who they are. "
            "I scroll quickly looking to confirm long-held insecurities festering among the replies. But what’s this?",

        "Beautiful, as always\n",

        "That bag though…and the shoes\n",

        "Hearts and fire emojis\n",

        "LOVE YOU in this and more fire emojis\n",

        "Where did you get that tank?\n",

        "Perfect color on you\n",

        "Girrrlll\n",

        "*Stunning* in this\n",

        "I’m stunned, just stunned",

        "And so on…okay the last one is just me conjuring Blanche Devereaux.",

        "I keep reading but there’s not a single hint of negativity. Not even so much as a self-deprecating remark in the name of girl power. "
            "Mind you these are all women commenting. Nonetheless, the overarching message is one of love, friendship, and empowerment.",

        "And the original post? It’s a photo of a woman wearing her finest summer attire. "
            "She’s what fashion’s most fashionable have dubbed plus size.",

        "Hers is a statement of body positivity. Yet, my eyes drift to her legs dimpled with cellulite, "
            "and cankles spreading over the top of her shoes. Why do I resent her supporters for celebrating her body just as it is? "
            "Why am I bitter at this woman for being fearless and undeniably herself?",

        ".  .  . \n",

        "Let’s start with the first question: Why do I resent her supporters? I guess it’s because people rarely say things like that to me. "
            "Or I don’t want to hear it because I’m quick to assume they’re lying. Their compliments mean nothing. They’re just being nice.",

        "You see I was fat long before I was fat. In high school when I was hardly any bigger than my size zero friends, "
            "the guys called me “Oprah.” A fatphobic and racist remark they loved to chant as I walked past them.",

        "Later when I had a job in retail, I stood there silent as these girls ridiculed their friend who was trying on lingerie. "
            "After a few minutes, they turned their attention to me and my weight. I guess folding underwear for minimum wage is enough to "
            "attract the ire of complete strangers.\n",

        ".  .  . \n",

        "And the second question: Why am I bitter at this woman for being fearless and undeniably herself? "
            "To say I don’t like my own body is an understatement. I hide under puffy sleeves and baggy sweatshirts as if to say "
            "'Don’t notice me, this is just a recording. I don’t actually look this terrible in real life.'",

        "It’s the same reason I resist eating potato chips in front of people lest I confirm their suspicions that my body is 60% donuts and 40% Doritos. I long for the return of old-timey bathing suits. "
            "The kind that makes you look like you escaped from prison in an arid climate.",

        "I thought we were all on the same page that smart girls don’t have to be pretty too. When I look back on my misspent youth, "
            "should I have been perfecting my hair and makeup instead of watching Scooby-Doo reruns and singing along to commercials with"
            " the Best Love songs of the 90s?",

        "Tang ping’s existence is similar to why restrictive diets or fanatical fitness regimes gain popularity, even though they have no sustainable credibility. People pushed to their limit will often go to the extreme for a solution — because when taken over the edge, "
            "extreme solutions seem like the only viable solution.",

        "Should I have broken a sweat in gym class rather than concocting a mysterious illness to get out of gym class? "
            "I can’t help but think my 20-year bout of acne and period cramps is God’s punishment for lying to gym teachers.",

        "When everyone laughs because the star athlete of your fifth-grade class gets slammed in the head with a basketball — "
            "because he was staring at your boobs — it’s not easy to embrace the life of an uncoordinated temptress.",

        ".  .  . \n",

        "But I digress. The more pressing question is why do these hateful words infect us with fatphobia and singular standards of beauty? "
            "Why do the words “cellulite” and “cankles” float to our lips and fingertips? I suppose it gives us a common language to shame others and dwell in the anguish of self-inflicted barbs.",

        "We have much to learn and unlearn, starting with mining for self-love where it actually resides. Letting the ugliness bubble up from within only "
            "confirms our worst impulse to deny someone else’s beauty. We throw cold water on fire emojis and refute compliments as nothing more than lies.",

        "To the aforementioned instigators, who scavenge for insecurities and feast on others’ pain, find your empty calories elsewhere. "
            "And to those who celebrate their own and others’ bodies, I’m trying to follow your lead. But I’m still catching up.",

        ".  .  . \n",
      ],

      date: 'July 28',
      readTime: '4',
      imageAsset: 'https://miro.medium.com/max/875/1*nthGYnaoXPTttuAb32b_WQ.jpeg'
  ),

  Article(
      id: '3',
      title: 'The Most Useful Writing Advice I’ve Ever Been Given',
      categories: 'Hobby',
      author: 'Sadie Hoagland',
      authorPhoto: 'https://miro.medium.com/fit/c/262/262/1*jBxrHdDi54It_Agm4bKPpQ.jpeg',
      articleBody: [
        "I’ve been studying writing for 20 years now. "
            "I’m at the point where I’ve now taught more workshops than I’ve been a student in, and yet I still feel like "
            "I’m constantly on the search for new gems of knowledge about writing to both share with my students, and use in my own practice.",

        "I’m also intrigued by what I remember teachers and writers telling me, and how hungrily I consumed what they had to say. "
            "I think this is partly because we see the talented writers that are our mentors as touching some magic that we, too, want to touch. "
            "This is, I think, why so many writers are asked questions like: “What is your process? What time of day do you write?” "
            "I think the subtext of all of these questions is, “How do you access the magic, the muse?” And, privately: “Would that work for me?”",

        "\nHere are some things that teachers I was lucky enough to have taught me:"

        "“Just because it happened to you doesn’t make it interesting.” I often repeat this line to students. "
            "From a writer who writes a lot of thinly veiled fiction based on her real life, "
            "this piece of advice is key for anyone writing nonfiction to understand. "
            "The personal is only interesting if it reaches into the universal.",

        "“Don’t go to weddings.” This is a real thing a quite famous writer told our graduate workshop. "
            "Her point was this: Don’t miss class. Above all, prioritize your writing and your work here. While we all thought it was "
            "rather eccentric at the time, and I personally think you should go to every wedding possible because they are so fun, "
            "I do see her point. What I think she was trying to tell us is it’s time for you to start taking yourself seriously as a writer,"
            " and to treat writing as your job.",

        "“Research, research, research (for inspiration as much as anything else).” I’d always thought of research as an academic, "
            "or even scientific, endeavor rather than a creative one. Boy, was I wrong. Fiction writers, poets, and, of course, nonfiction "
            "writers can benefit immensely from research. And research can be traveling, walking through your setting to take in the sensory"
            " details, or it can be reading old folk tales. I’d always thought, “Okay yeah, you research to make your work more realistic — "
            "but you do it to make it more real?” You do it because your work deserves that kind of investment on your part, but you also do it"
            " for inspiration. The details in Hans Christian Andersen (the codfish as paper in “The Snow Queen”!), the actual turns of phrase an"
            " old fisherman uses, the smell of the desert in spring — these are the goldmines of good writing. And you won’t find them unless you look.",

        "If you are bored, it’s not because you wrote it, it’s because it’s boring. Margot Livesey actually said, “If you are bored, "
            "it’s not because you’ve read that section so many times, it’s because it’s boring.” And it’s really true, and countless "
            "times it’s saved me from being boring.",

        "“Take out one dull line and add one stunning detail on every page.” This is from my exquisite writing mentor, Melanie Rae Thon, and is one of the many gems she has given me over the years. It is exquisite advice, and shows the dedication and diligence Thon gives to her own work. It is a really concrete action writers can take to drastically improve their writing. When I take this practice to my own work, it reminds me of adding a coat of oil to dull wood. It just immediately shines it up. "
            "It’s also wonderful to ask others to give their writing that kind of attention, and makes writers feel more proud of their work.",

        "'Draw Antonio, draw Antonio, draw and do not waste time.' In her book, The Writing Life, Annie Dillard writes that these are Michelangelo’s words to his apprentice and it’s such an eloquent, history-laden phrase — such a perfect balance between poetry and timelessness — that I’ve tended to use it as a mantra over the years. "
            "Whispering it to myself when I’m tired and frustrated. I feel it connects me with artists over time and it reminds me:",

        "Hey, just keep doing what you are doing. That’s really the only way to get better at it.",
      ],

      date: 'July 27',
      readTime: '4',
      imageAsset: 'https://miro.medium.com/max/875/1*Rp5d2l3F4E-uFZzi9Ww85g.jpeg'
  ),

];