-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 13, 2020 lúc 02:35 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blogdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cate_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `cate_name`, `slug`, `created_at`, `updated_at`) VALUES
(23, 'Fastfood', 'fastfood', '2020-11-03 16:45:05', '2020-12-05 12:28:58'),
(24, 'Soup', 'soup', '2020-11-09 06:52:28', '2020-12-05 12:28:51'),
(27, 'Dessert', 'dessert', '2020-11-14 07:09:45', '2020-12-05 12:28:21'),
(29, 'Meal', 'meal', '2020-11-15 07:17:41', '2020-12-05 12:29:07'),
(50, 'Vegetable', 'vegetable', '2020-12-05 12:24:08', NULL),
(51, 'Sweet', 'sweet', '2020-12-05 12:25:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_post`
--

CREATE TABLE `comment_post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment_post`
--

INSERT INTO `comment_post` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(27, 27, 27, 'binh luan ne', '2020-12-05 10:20:29', NULL),
(29, 1, 24, 'bbbbbbb', '2020-12-05 11:38:16', NULL),
(34, 27, 24, 'binh luan', '2020-12-06 07:27:59', NULL),
(35, 1, 29, 'aaaa', '2020-12-07 10:52:22', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `name_post` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `cate_id`, `name_post`, `title`, `slug`, `image`, `content`, `view`, `created_at`, `updated_at`) VALUES
(24, 51, 'vanilla custard slices', 'Suspendisse ultricies enim nec lectus rutrum, non lobortis tellus tempus', 'vanilla-custard-slices', 'brown-butter-chocolate-chip-cookies-5411w-2-600x400.jpg', 'I made these vanilla custard slices from Edd Kimber in August and we loved them — they’re like a rustic Napoleon or mille-feuille, at a fraction of the fuss — but declared them “not August food” and better saved for December because they feel elegant and a little festive. But now it’s December and, at times, I know it can feel like we will need a jeweler’s loupe to find some of this promised festivity. There are essays about what a bummer this holiday season promises to be. There are articles about what a dark winter is ahead. There are dire warnings about overwhelmed health systems. Listen, I am in charge of absolutely nothing — not even my own children listen to me — but I hereby give us permission to read none of these articles. Real life can be enough of a drag; we have absolutely no moral imperative to absorb additional gloom.\r\nInstead, I’ve been keeping a log of things I consider mood elevators. We went to a museum last weekend for the first time since last winter, and then an aquarium. We walked on Brighton Beach the weekend before, and got some dumplings to go. I splurged on some votives I’ve always loved and gifted others, and filled each with a candle, because the sun sets at approximately 2:30pm right now. We have vases and jars filled with knots of these wiry lights. We are “making” Hanukah candles, like we do every year. We are baking through jars of molasses, cinnamon, and ginger. We are making carafes of Irish cream, and finding ways to distribute them to friends. I’m trying to bury myself in books, but I loved the last one I read so much, I might just read it again (permission granted for this too). We’re going to cut snowflakes. We are going to ignore my husband’s protests and watch some terrible-wonderful holiday movies.\r\nWhat I mean is that I think that we should not wait for festivity to descend on us, but build it from the kitchen out and bake these delicious squares. They’re from Kimber’s — the inaugural winner of The Great British Bake Off — newest cookbook, which celebrates “One Tin Bakes: Sweet and simple traybakes, pies, bars and buns” — simple, creative, perfectly-executed desserts that require only one baking pan, a 9×13 [not that I listened]. The custard slice is a favorite of his twin brother’s from childhood — “a thick layer of bright yellow custard sandwiched between two layers of puff pastry.” He forgoes the icing that’s usually on top because he feels that it adds only sweetness, no flavor, and I did too. I didn’t know when I bumped this to December that it would be so timely after being a focus of a recent Great British Bake-Off Episode — they’re that British. However, since this isn’t GBBO, we get to buy, not make, our pastry and we have more than two hours to finish it. I like to let it set overnight in the fridge for a clean slice in the next day.', 192, '2020-11-14 12:39:52', '2020-12-07 07:19:15'),
(27, 23, 'Steak Diane', 'The perfect special occasion steak', 'steak-diane', 'one-pot-hainanese-chicken-7107w-600x400.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 135, '2020-11-15 06:28:20', '2020-12-09 01:15:16'),
(29, 23, 'Teriyaki Chicken', 'You only need 6 ingredients to make the best teriyaki chicken of your life.', 'teriyaki-chicken', 'teriyaki-chicken-8201w.jpg', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i0.wp.com/smittenkitchen.com/wp-content/uploads/2020/12/vanilla-custard-slices-scaled.jpg?w=1920&amp;ssl=1\" /></p>\r\n\r\n<h1><a href=\"https://smittenkitchen.com/2020/12/vanilla-custard-slices/\">vanilla custard slices</a></h1>\r\n\r\n<p>I made these vanilla custard slices from&nbsp;<em><a href=\"https://www.instagram.com/theboywhobakes/?hl=en\">Edd Kimber</a></em>&nbsp;in August and we loved them &mdash; they&rsquo;re like a rustic Napoleon or mille-feuille, at a fraction of the fuss &mdash; but declared them &ldquo;not August food&rdquo; and better saved for December because they feel elegant and a little festive. But now it&rsquo;s December and, at times, I know it can feel like we will need a jeweler&rsquo;s loupe to find some of this promised festivity. There are essays about what a bummer this holiday season promises to be. There are articles about what a dark winter is ahead. There are dire warnings about overwhelmed health systems. Listen, I am in charge of absolutely nothing &mdash; not even my own children listen to me &mdash; <strong>but I hereby give us permission to read none of these articles</strong>. Real life can be enough of a drag; we have absolutely no moral imperative to absorb additional gloom.</p>\r\n', 210, '2020-04-21 06:29:21', '2020-12-07 10:59:46'),
(32, 23, 'A Breakdown of the Full English Breakfast', 'How to Make a Full English Breakfast', 'a-breakdown-of-the-full-english-breakfast', 'full-english-7355w-2.jpg', 'We made this on a snowy morning and it was perfect! Lots of hot tea, big fluffy flakes falling down outside, and ALL the fried bread. But, to be honest, I’m not sure if I’m a huge fan. Call me a savage, but I think I love regular breakfast more. Mike on the other hand, LOVED it! He said it was as good as the full English breakfasts he had while he was in London. Me on the other hand? I didn’t eat for the rest of the day and went into a food coma – I was definitely full!\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 100, '2020-11-17 04:40:52', '2020-12-09 01:14:15'),
(44, 23, 'Ricette pizza', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Natus sunt obcaecati aliquam ipsum officia enim ea, suscipit, nostrum, harum in quia! Maiores debitis quaerat illo quas architecto, voluptas non natus!', 'ricette-pizza', 'photo-1513104890138-7c749659a591.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur ad ut asperiores commodi officiis labore quaerat expedita corporis ipsum cum, eius sunt laborum accusantium nemo, velit dicta voluptas magnam. Provident.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur ad ut asperiores commodi officiis labore quaerat expedita corporis ipsum cum, eius sunt laborum accusantium nemo, velit dicta voluptas magnam. Provident.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur ad ut asperiores commodi officiis labore quaerat expedita corporis ipsum cum, eius sunt laborum accusantium nemo, velit dicta voluptas magnam. Provident.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur ad ut asperiores commodi officiis labore quaerat expedita corporis ipsum cum, eius sunt laborum accusantium nemo, velit dicta voluptas magnam. Provident.', 45, '2020-12-03 12:37:00', '2020-12-07 10:59:13'),
(54, 23, 'sour cream and chive fantails', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'sour-cream-and-chive-fantails', 'Cheesy-baked-pasta-with-chorizo-DSC_4596-1024x576.jpg', '<p>It would not be the Smitten Kitchen if I wasn&rsquo;t popping in here, chaotic as ever, 24 hours before the cooking- and eating-est day of most of our years, to suggest a new recipe for your menus, that, judging by my DMs, you settled weeks ago. Good news, however, there&rsquo;s no timestamp on dinner rolls, especially ones as wonderful as these. If anything, I don&rsquo;t think we eat them often enough &mdash; you know, just because it&rsquo;s Wednesday. One of my favorite recipe concepts from late Gourmet years is Ruth Cousineau&rsquo;s buttermilk fantail rolls. It&rsquo;s a startling simple recipe &mdash; a buttery, yeast-raised roll &mdash; with a brilliant twist: rolling it thin, brushing it with butter, stacking it in little piles of squares, turning each into the cup of a muffin tin. In the oven, the rolls spring open like a fantail, just the loveliest thing. Why make ordinary rolls if you could make rolls that evoke a highly agile bird known for taking intricate looping flights through the air, entrapping prey in their fanned tails? Or if that&rsquo;s not the energy you want on your holiday table, Gourmet described them at the time as a &ldquo;blooming flower, with each petal forming a perfect pull-apart bite.&rdquo; Over the years I&rsquo;ve tweaked them quite a bit, though, using a smaller amount of sour cream for the buttermilk, an egg for a little stretchy tenderness, dropped the butter slightly, bumped up the salt, and then this year, because I want what I want and nobody talked me out of it, gave it a most blissful sour cream and chives vibe. I hope you bring the same energy &mdash; only the foods you love the most, made exactly the way you like them &mdash; to your quieter holiday table this year.</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&amp;ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=1050&amp;q=80\" /></p>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Repellendus&nbsp;quae&nbsp;et&nbsp;suscipit&nbsp;quis&nbsp;nobis&nbsp;at&nbsp;ex&nbsp;soluta&nbsp;voluptates&nbsp;commodi&nbsp;laboriosam?&nbsp;Aliquid&nbsp;consequuntur&nbsp;doloremque&nbsp;similique.&nbsp;Tempora&nbsp;accusamus&nbsp;sunt&nbsp;et&nbsp;totam&nbsp;laboriosam.</p>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Repellendus&nbsp;quae&nbsp;et&nbsp;suscipit&nbsp;quis&nbsp;nobis&nbsp;at&nbsp;ex&nbsp;soluta&nbsp;voluptates&nbsp;commodi&nbsp;laboriosam?&nbsp;Aliquid&nbsp;consequuntur&nbsp;doloremque&nbsp;similique.&nbsp;Tempora&nbsp;accusamus&nbsp;sunt&nbsp;et&nbsp;totam&nbsp;laboriosam.</p>\r\n', 8, '2020-12-05 12:21:51', '2020-12-07 07:21:45'),
(58, 23, 'baivietnenenene', 'ádadsasd', 'baivietnenenene', 'air-fryer-chicken-thighs-6874w-600x400.jpg', '<h1><strong>Heading</strong></h1>\r\n\r\n<blockquote>\r\n<p><strong>quotes</strong></p>\r\n</blockquote>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Provident&nbsp;incidunt&nbsp;nulla&nbsp;minima,&nbsp;deserunt&nbsp;dignissimos&nbsp;itaque&nbsp;nobis&nbsp;architecto&nbsp;blanditiis&nbsp;adipisci,&nbsp;facilis,&nbsp;sed&nbsp;eos&nbsp;laboriosam&nbsp;vero&nbsp;harum&nbsp;maxime&nbsp;repudiandae&nbsp;recusandae&nbsp;dolorum&nbsp;consectetur!</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&amp;ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=1050&amp;q=80\" style=\"height:460px; width:690px\" /></p>\r\n', 11, '2020-12-06 18:48:04', '2020-12-07 07:21:49'),
(59, 24, 'Homemade Chicken Noodle Soup', 'The BEST homemade chicken noodle soup! This version is made from scratch, so it\'s light and nourishing. All the goodness from the chicken in one pot of soup. Just what you need to recover from a cold or the flu.', 'homemade-chicken-noodle-soup', 'Chicken-Noodle-Soup-LEAD-2-1.jpg', '<h2>THE SECRET IS IN THE STOCK</h2>\r\n\r\n<p>The key is homemade stock made from chicken parts or a whole chicken. The rich gelatin from the chicken bones, cartilage, and tendons is good for you, and one of the reasons why homemade chicken stock is so beneficial.</p>\r\n\r\n<p>If you don&rsquo;t already have a cache of&nbsp;<a href=\"https://www.simplyrecipes.com/recipes/how_to_make_chicken_stock/\">homemade chicken stock</a>, the following is a recipe for making the entire soup from scratch, starting with a whole chicken, parted out.</p>\r\n\r\n<p>Already have chicken stock?&nbsp;<strong>This recipe includes instructions for a 30 minute shortcut version as well.</strong></p>\r\n\r\n<p>This recipe makes an especially clean tasting soup with a rich, clear broth, and plenty of noodles.</p>\r\n\r\n<h2>HOMEMADE CHICKEN NOODLE SOUP FROM SCRATCH</h2>\r\n\r\n<p>If you have a couple hours, making chicken noodle soup entirely from scratch is the way to go. All you need is a whole chicken (cut into parts), water, celery, onions, and carrots, seasonings, and egg noodles.</p>\r\n\r\n<p>The recipe is basically two parts:</p>\r\n\r\n<ol>\r\n	<li><strong>First you make the stock.</strong></li>\r\n	<li><strong>Then you strain out the bones and make the soup.</strong></li>\r\n</ol>\r\n\r\n<h2><strong>FIRST, MAKE THE STOCK</strong></h2>\r\n\r\n<p>Some recipes will have you cook the chicken you will use as meat in your soup for the entire time you are cooking the bones for stock. This will produce dry, over-cooked pieces of chicken.</p>\r\n\r\n<p>To avoid dried out chicken in our soup, in our recipe we<strong>&nbsp;remove the breast and thigh meat from the bones</strong>&nbsp;that we plan on using in the finished soup. We first make the stock and later add the raw chicken meat to cook near the end of the soup-making process. You could also cook the breast and thigh chicken pieces whole, in the broth, and remove them after 15 minutes of cooking or so, cool them and shred them to be added at service.</p>\r\n\r\n<p>To make the stock, we first&nbsp;<strong>parboil the stock meat and bones</strong>, at high rolling boil, for 3&nbsp;minutes, then discard the boiling water. This hard boil forces the scum to the surface all in one go. This is a classic stock making technique that&nbsp;helps produce a clear, clean-tasting broth. (You will still get all of the nutritional value from the chicken during the long simmering step that follows.)</p>\r\n\r\n<p>We then return those parboiled meat and bones to the pot, add some celery, carrots, onions, garlic, and herbs, cover with water, and simmer for 1 1/2 hours to make the stock.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.simplyrecipes.com/wp-content/uploads/2013/01/chicken-noodle-soup-method-3.jpg\" style=\"height:460px; width:690px\" /></p>\r\n\r\n<h2><strong>SECOND, MAKE THE SOUP</strong></h2>\r\n\r\n<p>When the stock is ready, we strain out the solids, and add fresh veggies to the stock. Any vegetables you used in making the stock will have had all of their nutritional value simmered out of them after an hour, which is why we are adding fresh vegetables.</p>\r\n\r\n<p>Once the soup and vegetables are simmering, we chop up the raw chicken breast and thigh meat we had removed from the bone in the first step and return it to the soup. Next we add in the dry noodles, and the soup is done when the noodles and chicken pieces are cooked!</p>\r\n\r\n<h2>THE QUICK VERSION: 30-MINUTE CHICKEN SOUP</h2>\r\n\r\n<p>If you already have chicken stock (again&nbsp;<a href=\"https://www.simplyrecipes.com/recipes/how_to_make_chicken_stock/\">homemade</a>&nbsp;is best), you can make this chicken noodle soup in 30 minutes or less; just start at step six.</p>\r\n\r\n<p>Add chopped carrots and celery to the stock and bring to a simmer. Then add chopped chicken breast or thighs and bring to a simmer again. Then add dry noodles. When the noodles are done, add seasonings like parsley, salt, pepper, and thyme, and you&rsquo;re done!</p>\r\n\r\n<h2>HOW TO STORE AND FREEZE CHICKEN SOUP</h2>\r\n\r\n<p>Refrigerate the finished soup for up to 5 days and reheat gently over low heat. Note that the egg noodles will expand quite a bit in the soup. If you don&rsquo;t like this, cook the noodles separately and add them to each bowl.</p>\r\n\r\n<p>The soup will also freeze well for up to 3 months. We advise waiting to add the noodles to the soup until serving.</p>\r\n', 17, '2020-12-07 07:24:15', '2020-12-07 10:59:56'),
(60, 23, 'Christmas Cookies', 'These Christmas Cookies are buttery, tender, and ready for icing. A tried-and-true family favorite, this is THE cookie that Santa wants on his cookie plate!', 'christmas-cookies', 'Holiday-Sugar-Cookies-LEAD-4.jpg', '<h2><span style=\"color:#e74c3c\">THE BEST ICING FOR CHRISTMAS COOKIES</span></h2>\r\n\r\n<p>How do you make icing for sugar cookies?</p>\r\n\r\n<p>Some people prefer to use&nbsp;<a href=\"https://www.simplyrecipes.com/recipes/royal_icing/\">royal icing</a>&nbsp;for their sugar cookies, but&nbsp;<strong>in our family we use this no-fail classic powdered sugar recipe</strong>&nbsp;&ndash; made with just a few simple ingredients &ndash; then we add our food colorings of choice to the icing.</p>\r\n\r\n<p>The color palette you choose, and how you use it on your holiday sugar cookies, is really up to you. Some people want a specific color theme to match the holiday decorations in their homes. Some people prefer coating the cookies in crystals and skipping the icing altogether.</p>\r\n\r\n<p>Others let the kids (and the adults) go wild while decorating the cookies and just have fun. You can also use&nbsp;<a href=\"https://www.amazon.com/Wilton-Candy-Decorating-Pen-Set/dp/B0019INEVY/\" target=\"_blank\">pre-made icing decorating pens</a>&nbsp;for detailed piping, messages or intricate designs.</p>\r\n\r\n<h2><span style=\"color:#e74c3c\">PLAN OUT YOUR ICING COLORS</span></h2>\r\n\r\n<p>Think ahead about how much of each icing color you want for your designs. Divide the plain icing into separate bowls and add food coloring in small drops, mixing thoroughly each time, until you reach your desired color. If you need to lighten a color, you can mix some of the plain icing back in, but it&rsquo;s much easier to darken a color than it is to lighten it, so go slowly!</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.simplyrecipes.com/wp-content/uploads/2006/12/Holiday-Sugar-Cookies-LEAD-5.jpg\" /></p>\r\n\r\n<h2>CHRISTMAS COOKIE BAKING TIPS</h2>\r\n\r\n<ul>\r\n	<li><strong>Cut out shapes close together:</strong>&nbsp;When cutting out cookie shapes, make your cuts as close as possible to each other to get the most cookies from the surface of the rolled out dough. Always be sure to work on a floured and sugared surface when cutting.</li>\r\n	<li><strong>Dip cookie cutters in flour:</strong>&nbsp;Dipping the cookie cutter in some flour after each cut will also help the dough release more easily from the cookie cutter.</li>\r\n	<li><strong>Bake longer for crisper cookies:</strong>&nbsp;If you want your cookies to be a little more crispy than soft, just bake them a little bit longer, until they are slightly brown around the edges.</li>\r\n	<li><strong>Let cookies sit for a minute or two after baking:</strong>&nbsp;After baking, let the cookies sit for a minute or two on the cookie sheet before attempting to remove them. This allows the cookies to firm up slightly and keeps the shapes intact. Cool the baked cookies on wire racks for at least 5-10 minutes after removing them from the baking sheets.</li>\r\n	<li><strong>Cool cookie sheets between batches:</strong>&nbsp;Be sure to let the cookie sheets cool completely between batches, so the dough doesn&rsquo;t thin out and run, which it will do if placed on a warm surface.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.simplyrecipes.com/wp-content/uploads/2006/12/Holiday-Sugar-Cookies-LEAD-6.jpg\" /></p>\r\n\r\n<h2>HAPPY HOLIDAYS!</h2>\r\n\r\n<p>You might think that once you&rsquo;ve invested the time and effort to make the dough, chill it, roll it out, cut and bake the cookies &ndash; not to mention icing them and decorating them &ndash; that the cookies might just be too pretty to eat. Well, think again.</p>\r\n\r\n<p>These holiday sugar cookies are totally addictive. And while they will last for up to a week when stored in an airtight container, trust me. They won&rsquo;t last that long. Happy holiday baking!</p>\r\n', 23, '2020-12-07 07:30:01', '2020-12-09 01:13:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('8bbyfPfL969YlS1QQhz_a4bv1inIHUOK', 1607406277, '{\"cookie\":{\"originalMaxAge\":14400000,\"expires\":\"2020-12-08T05:44:34.309Z\",\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{}}'),
('FVcLddsP2O2i-sfEQMgbDf1RRwIqTfQ7', 1607492234, '{\"cookie\":{\"originalMaxAge\":14400000,\"expires\":\"2020-12-09T05:19:52.444Z\",\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":1}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Author') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Author',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'nguyenha018199@gmail.com', 'Admin', '$2a$10$Cu7g.vR/4i517YLejFlFIeLt91OMh0EAN3E9rOxnam1QsSsk31oKG', '2020-10-31 09:03:23', NULL),
(18, 'hoangnguyen', 'emailmoi1@gmail.com', 'Author', '$2a$10$DfXmFIn6dAMG/tYc6x72Xeg0C0Yrdi/nqcjLD8FzPZJdT8kuliO4e', '2020-11-29 03:35:12', '2020-12-05 04:00:01'),
(23, 'hahoangnguyen', 'nguyenha1910@gmail.com', 'Author', '$2a$10$./yxuUnD0CwOsQwnHyrSJu8dfwgkT7GWK0WYiKqEbKx2aYsJhd.qW', '2020-12-05 01:27:25', '2020-12-05 04:06:08'),
(25, 'hahoangnguyen1', 'nguyen@gmail.com', 'Author', '$2a$10$gQGj2BvI6w/nIWuzITTnweL1ceupbGoFXmiQIleSm1CkXO8kVHPq2', '2020-12-05 01:32:41', NULL),
(27, 'hoangnguyen1810', 'diemngan1111@gmail.com', 'Author', '$2a$10$9jxideQIMaDIYWJ4QegcWO2kvR6D8SUc.noFEe/AH27nGsorNeOie', '2020-12-05 10:13:04', '2020-12-06 07:28:47'),
(28, 'hahoangnguyen11111', 'aa@gmail.com', 'Author', '$2a$10$u.H5V9hfmW4ZEKicvw.VF.1RQM5Ps//29OAVlpKW.9thD8FE/JIPO', '2020-12-05 11:25:48', NULL),
(29, 'hahoangnguyen2', 'hahoangnguyen3@gmail.com', 'Author', '$2a$10$UOYT9ZekWAxSy8diiCbFyuqnzkBzC4poMp.HNtaCFtasaMMiSo96e', '2020-12-06 07:24:17', '2020-12-06 07:24:36'),
(31, 'hahoangnguyen111111', 'hahoangnguyen1111@gmail.com', 'Author', '$2a$10$0R9DyvMPc36d.ojUJrmFxe1EFCy98DqIsLNtZmKxj.tmCB22LE7VS', '2020-12-08 01:43:50', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`cate_name`) USING HASH;

--
-- Chỉ mục cho bảng `comment_post`
--
ALTER TABLE `comment_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `cate_FK` (`cate_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `comment_post`
--
ALTER TABLE `comment_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment_post`
--
ALTER TABLE `comment_post`
  ADD CONSTRAINT `post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `cate_FK` FOREIGN KEY (`cate_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
