import 'package:blog_post/domain/entity/blog_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'blog_event.dart';

part 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  BlogBloc() : super(BlogInitial()) {
    init();
  }

  void init() {
    emit(
      BlogLoaded(
        [
          BlogModel(
            title: 'ChatGPT, or: How I Learned to Stop Worrying and Love AI',
            imageUrl: 'https://miro.medium.com/v2/resize:fit:2000/format:webp/1*plGx6sjcSSp84-bZGusnFg.jpeg',
            author: 'Lessig',
            content: 'why I had become a lawyer. My uncle, Richard Cates, had been the lawyer working for the House Committee on Impeachment (along with a much younger lawyer, Hillary Rodham (soon to be) Clinton). In 1974, just before Nixon resigned, Cates visited us in Pennsylvania and took me for a long walk. I wanted to know why he was doing what he was doing — persecuting Richard Nixon! I was 13. Uncle Dick was the only Democrat in our extended family. He was also the only lawyer. My father despised lawyers. I loved everything about my father.\nUncle Dick explained his job to me. It was, as he said, nothing more than to teach the facts of the case — the Watergate coverup — to Members of Congress. As I remembered his words in Code:',
            deeplinkUrl: 'https://lessig.medium.com/chatgpt-or-how-i-learned-to-stop-worrying-and-love-ai-242f181723af',
          ),
          BlogModel(
            title: 'How Many Hobbits? A Demographic Analysis of Middle Earth',
            imageUrl: 'https://miro.medium.com/v2/resize:fit:1400/format:webp/1*SeC-r3qeVemRUEVP_1sfJQ.png',
            author: 'Lyman Stone',
            content: 'Part 2 of this essay on Middle Earth population, mapping specific populations, is here.\nUpdate 1: On further review, the initial version of this post systematically overestimated the populations of a few low-density regions, in particular Minhiriath, and to a lesser extent the Easterling/Haradrim areas, Eregion, Enedwaith, and West Eriador. I regret the error, but if you scroll down you’ll find some interesting new commentary on Minhiriath!\nI’ve always loved fantasy, and, as long-time followers know, have done some dabbling in excessively-nerdy analysis of fantasy worldbuilding and demography. I’ve also recently dabbled in reconstructing population history in the near east. For those who don’t know me, I’m a demographer. I study population. And my first love in fantasy was, of course, Middle Earth.\nAs I’m back in a LOTR kick, I got curious: how many people live in Middle Earth? Being a demographer, I was mainly interested in the data side of things.\nTolkien is frustratingly vague about population. He almost never gives us estimates of settlement sizes, and many of the larger metropolises of Middle Earth (like Pelargir) never actually appear on the page. Sizable armies make frequent appearances, yet because his adventurers almost exclusively traverse the wilds of Middle Earth, we rarely see where those soldiers are coming from.\nNonetheless, devoted fans have attempted to cobble together some numbers. Stephen Wigmore is one of the most prominent attempts. Here are his articles:',
            deeplinkUrl: 'https://medium.com/@lymanstone/how-many-hobbits-a-demographic-analysis-of-middle-earth-cd53b91d141f',
          ),
          BlogModel(
            title: 'Happy 28th Birthday, JavaScript. How’s It Going?',
            imageUrl: 'https://miro.medium.com/v2/resize:fit:2000/format:webp/1*scdajpqyl8LOXRNuCLPa4Q.jpeg',
            author: 'Attila Vágó',
            content: 'JavaScript and I are birthday twins. I’d probably remember its birth had I not still been a kid who just discovered LEGO, books and the multiplication table. In 1995, I had not even seen a computer. We were barely five years past the Berlin Wall falling and the Iron Curtain being lifted. Computers in Eastern Europe were the last thing on our minds. Yet on the other side of the world, something pivotal happened. Something that enabled the web and technology as we know it today. That something was called JavaScript, and nobody cared. Windows 1995 was all the new rage, why would anyone care about some silly scripting language?\nA rollercoaster history of JS\nApart from maybe Brendan Eich, the leadership of Netscape and Sun Microsystems, nobody really knew just how pivotal of a moment the 4th of December would become for every single internet user today.\nOne of the perhaps lesser-known facts about JavaScript’s inception is that it was never intended to become a language. The goal with the hiring of Brendan Eich was to integrate the Scheme language into Netscape, while in parallel trying to integrate Java as well. But as the famous Hungarian saying goes, “when you chase two rabbits, you’ll catch none” and it applies here as well. As we know now, neither Java nor Scheme became part of our browsers, and Netscape’s management decided to stop chasing rabbits and instead develop a new language entirely that in syntax was closer to Java than Scheme.',
            deeplinkUrl: 'https://levelup.gitconnected.com/happy-28th-birthday-javascript-hows-it-going-d66c79663fdc',
          ),
          BlogModel(
            title: 'Why I’ve Ripped Out Performance Reviews for Over a Decade',
            imageUrl: 'https://miro.medium.com/v2/resize:fit:1400/format:webp/0*UWST7oxkxkmTu8dw.jpg',
            author: 'Colleen Wheeler McCreary',
            content: 'Eighteen years ago, while in labor with my son, I was sitting in front of a laptop trying to finish up a few last-minute urgent tasks before officially starting my maternity leave. I was a recruiting manager at a large public company. What was so critical that I had to sit through waves of contractions typing madly? Finishing performance reviews for my direct reports. Was there something earth-shattering that would be written down in these never-ending questions? No. Was there anything life-changing that had to be documented this one time? No. Was I going to be the decision-maker on any of their rewards or promotions? No. It was just the required process so my employees could potentially be eligible for their small bonus or the 1–2% merit increases that I didn’t decide, just part of the system.\nI can tell you that writing performance reviews while in labor (good thing it went 24 hours) didn’t create my distaste for them; it was every performance review I had been given, every forced self-assessment, every forced “strengths and weaknesses” commentary, and most of all, the race to only discuss & look at the compensation versus any honest, constructive growth conversations.\nIn the best case, the performance review was mainly a formality because my managers regularly discussed how I was doing relative to clear expectations, and there wasn’t anything surprising. In the worst case, random negative comments from some senior employee in an email I never saw months prior exemplifying my lack of diplomacy (probably well-deserved; I’ve never had a massive respect for traditional authority). Even worse, I had worked at a company that set up anonymous peer feedback where people either said next to nothing or something horrible since it was known that everyone was competing for a slight chance of promotions or a high rating.',
            deeplinkUrl: 'https://medium.com/@colleenwheelermccreary/why-ive-ripped-out-performance-reviews-for-over-a-decade-1238988910d3',
          ),
          BlogModel(
            title: 'The science behind inspiration and how to design more of it into your life',
            imageUrl: 'https://miro.medium.com/v2/resize:fit:1400/format:webp/1*0_jTl9k5QOFbgrtj2-vn-g.gif',
            author: 'Minnie Bredouw',
            content: 'If you’re like me, connecting with the creative muse has felt a bit strained the past few years. Finding inspiration can be hard in what feels like a nonstop stream of awful news, marked by climate disasters, humanitarian crises, a global pandemic, and what feels like the political upside-down. Staying inspired can be challenging as we experience a collective mental health dip¹ and work burnout is on the rise². And applying inspiration to our pursuits can feel downright impossible, with just the ping of a phone to interrupt our flow state and send us back to square one. Managing our time and energy in the “attention economy” means we are spending more time in front of screens than ever before and consuming a whopping five times more information than we did only 50 years ago³.\nAll of this can leave you wondering — when did being inspired feel like so much work?\nCuriosity and wonder are innate to all humans, and particularly prevalent in children, but over time, as questions turn to knowledge and we use judgment to navigate the world, we are in this mindset less. And similar to muscles that atrophy, our natural ability to feel inspired can be harder to tap into the less often we use it. When I joined Pinterest in Spring of 2020, I was keen to unpack the nebulous concept of inspiration (Pinterest is colloquially known as the “home of inspiration”) in a time that felt anything but. Three and half years in, here’s what I’ve learned.',
            deeplinkUrl: 'https://pinterest.design/the-science-behind-inspiration-and-how-to-design-more-of-it-into-your-life-8ecbda1cbed2',
          ),
          BlogModel(
            title: 'https://blog.medium.com/become-a-friend-of-medium-dd2fa7bf16c3',
            imageUrl: 'https://miro.medium.com/v2/resize:fit:1400/format:webp/1*CbB15QWmRzkzImjvtdSa1g.png',
            author: 'Alex Benzer',
            content: 'TL;DR: We’re launching a new membership level called Friend of Medium, designed to directly support the Medium writing community. Become a Friend of Medium, or upgrade your current membership: medium.com/membership.More than a decade ago, we created Medium as a home for high-quality stories. We focused on creating a simple, beautiful experience for readers and writers, sustained without selling ads or user data. Our member-supported platform directly supports writers; through our Partner Program, we’ve built a sustainable new subscription model for online publishing.\nWe designed Medium this way because we believe writers should be rewarded for great writing. If you’re reading this, we imagine you do, too.\nWhen we ask people why they became Medium members, many tell us that they want to support writers. Our membership makes that easy: subscribe once, and automatically support every writer whose stories you read here. No need to juggle multiple subscriptions, accounts, payment methods, or patronage platforms.\nThis week, we’re taking our mission a step further with a new membership level: Friend of Medium. It’s priced at 15/month or 150/year. As a Friend of Medium, more of your membership dollars will directly support the writers you love—plus the editors, curators, and teams who make Medium a vibrant, inclusive home for human stories. You’ll also get access to a new Friend Link feature that lets you share what you read with your friends.',
            deeplinkUrl: 'https://blog.medium.com/become-a-friend-of-medium-dd2fa7bf16c3',
          ),
          BlogModel(
            title: 'When It’s Time to Let a 40-Year Friendship Go',
            imageUrl: 'https://miro.medium.com/v2/resize:fit:1400/format:webp/1*M7tyyHTjceZyTlT91zTS1A.png',
            author: 'Jacqueline Dooley',
            content: 'met Clara* forty years ago in 7th grade Social Studies — a class where the drone of the teacher’s voice and the way he picked relentlessly at his face lingers like a faded photograph in my cerebral cortex.ётClara sat at the desk in front of mine. She was wickedly funny and precociously smart. She noticed everything, including how often I laughed at her jokes which were frequent and brutal and absurd. That’s how our friendship started — with laughter.ётWe used to duck into the girls’ bathroom after class to refresh our lip gloss and eye liner (a newly acquired skill). Once, she’d tied my shoelaces to my desk right when the bell rang. I’d helplessly watched the class empty out while I tried to untie myself.ётClara had been thorough. She’d made double knots and ultimately had to help me get unstuck. We’d laughed so hard — the kind of laughter that bubbles up from deep inside your gut and makes your body shake. A year later, Clara and I graduated from middle school. She went to a private high school and I went to public school and we lost touch for a while.ётTwo years later, Clara transferred into my high school in the middle of 10th grade. I’d gone from rarely seeing her to having her front and center in my daily life. This would become a pattern throughout our friendship.',
            deeplinkUrl: 'https://medium.com/the-memoirist/sometimes-the-cracks-get-too-big-to-hold-a-friendship-together-ec8792494f26',
          ),
        ],
      ),
    );
  }
}
