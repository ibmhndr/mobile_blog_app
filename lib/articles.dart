class Article {
  String title;
  String categories;
  String author;
  String authorPhoto;
  List <String> articleBody;
  String date;
  String readTime;
  String imageAsset;

  Article({
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

];