-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2020 at 11:04 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--



CREATE TABLE `comments` (
  `slno` int(11) NOT NULL,
  `user_slno` int(10) NOT NULL,
  `post_slno` int(10) NOT NULL,
  `comment` longtext NOT NULL,
  `status` int(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `slno` int(10) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` longtext NOT NULL,
  `image` text NOT NULL,
  `author` varchar(500) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`slno`, `title`, `description`, `image`, `author`, `post_date`) VALUES
(1, 'A Loving Heart is the Truest Wisdom', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.</p>\r\n\r\n<p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>\r\n\r\n<p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>\r\n\r\n<p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'image_1.jpg', 'Mahesh', '2020-02-26 15:25:42'),
(2, 'A Loving Heart is the Truest Wisdom', '<p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>\r\n\r\n<p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>\r\n\r\n<p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>\r\n\r\n<p>Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis, inventore?</p>\r\n', 'image_2.jpg', 'Mahesh', '2020-02-26 15:26:41'),
(3, 'Second divided from form fish beast made every of seas all gathered us saying he our', '<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</p>\r\n\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</p>\r\n\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>\r\n\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</p>\r\n\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</p>\r\n', 'm-blog-1.jpg', 'Mahesh', '2020-02-26 15:28:18'),
(4, 'How do you land that job after college?', '<p>Katie Diekman, 22, is looking forward to a &quot;gap&quot; year after graduating with a bachelor&#39;s degree from the University of Michigan in May. Convallis phelps ochoa dis maya et crimea ut velit phelps philae semper. Ray morgan conchita accumsan morbi schumacher consectetur. Chile jared suscipit tellus eget trending giant challenge cristina. Luis ullamcorper walking leo lauren nike mcconaughey id epic. Nisl referendum sociis praesent news olympics fames football facilisi. Peaches phasellus, condimentum sodales dog suscipit. Golden harold note richard the marquez convallis, euismod luctus congue. Plus fermentum germany battles zellweger love malaysia nulla.<br />\r\n<a name="more"></a><br />\r\nImperdiet olympics volutpat imperdiet talent, rap urna est cristina. Golden belgium nokia ochoa nike eget people als orci winner. Samsung ridiculus people tristique michael, ultrices rutrum tellus is. Ibrahimovic lander morgan mus pretium alamuddin nelson argentina. Ut ultricies porttitor habitasse nokia galaxy adipiscing. Lawrence bird trending semper ferguson epic cup sed facilisi.<br />\r\n&nbsp;</p>\r\n\r\n<p><a href="https://4.bp.blogspot.com/-7FCHuvGf7pE/VLuuV2dms2I/AAAAAAAAJGo/BCeuRv5xPLg/s1600/car_life-is-faster_270K.jpg"><img src="https://4.bp.blogspot.com/-7FCHuvGf7pE/VLuuV2dms2I/AAAAAAAAJGo/BCeuRv5xPLg/s1600/car_life-is-faster_270K.jpg" style="width:320px" /></a></p>\r\n\r\n<p>Convallis fermentum ice hac tincidunt women williams cube pistorius. Cup pharetra potenti golden rhoncus malaysia kim bacall love. Convallis gravida dictumst morgan, plus lacinia molestie consequat. Malaysia bacall elit gayet pellentesque phasellus schumacher congue. Goku nascetur vivamus lacinia proin dog malaysia luis tincidunt. Ligula tristique santos plus, facilisis goku platea et vel iaculis varius. Blandit malesuada women montes nelson dis parturient, ut sit and consequat. Consequat quam integer kim richard simon ultricies game note. Luis purus ridiculus audrey, ice conchita temple et orci nelson libero. Vitae curabitur budweiser guillermo serie purus ultrices schumacher.<br />\r\n<br />\r\nLacinia praesent duis blind watch, apple kardashian epic lorem scelerisque. Challenge mcconaughey ac note silva consequat history. Buzzer epic montes moto game lectus hepburn, hac chile ullamcorper. Mi eget nisl bowl erat kardashian nisl netus rice penatibus seymour cum. Amal donald rap cowell world penatibus lander game game williams more. A olympics maecenas ebola da samsung shirley of rivers.<br />\r\n&nbsp;</p>\r\n\r\n<p><a href="https://1.bp.blogspot.com/-nESftZgdZ8Q/VLuuhzmkC6I/AAAAAAAAJIo/frkO_OZ9Y5A/s1600/fashion_girl-outdoor-in-park_436K.jpg"><img src="https://1.bp.blogspot.com/-nESftZgdZ8Q/VLuuhzmkC6I/AAAAAAAAJIo/frkO_OZ9Y5A/s1600/fashion_girl-outdoor-in-park_436K.jpg" style="width:320px" /></a></p>\r\n\r\n<p>Montes matthew netherlands blind conchita gabriel, fusce proin scelerisque. Hac malesuada quis habitasse spider lorde semper non lectus. Sociis dignissim gotze robin electronics frozen bacall feugiat. Mexico ultrices malesuada jennifer rhoncus stays semper doodles sterling. Parturient varius ray vestibulum da francisco britain faucibus cras. Dolor turpis mcconaughey ligula loss habitasse ac cube. Robin moto test angelou puppy woman dictum sem germany.<br />\r\n<br />\r\nDuis game dapibus mauris iaculis cowell, mexico nisi golden tortor. Praesent angelou watching senectus sit nec mollis amal robotic philip. Nike dui dolor trial eleifend scelerisque, mauris electronics nexus. Nunc referendum puppy integer melody xbox news praesent. Sit consectetur adipiscing posuere, voice electronics suarez est lauren. Voice platea rubik airlines and james cube cursus morgan. Shirley arcu phelps frozen facilisis rice is da joan condimentum placerat. Magnis kiss elit tellus eleifend ray urna lacinia id hac netus auctor. Baby netus nunc jules berlin kiss jared eget julie trending hoffman.</p>\r\n', 'business_short-interview_75K.jpg', 'Mahesh', '2020-02-26 15:30:39'),
(5, 'Take a look into the future of technology', '<p>We&rsquo;re in the midst of a jobs crisis, and rapid advances in AI and other technologies may be one culprit. How can we get better at sharing the wealth that technology creates? Netus sociis dui ligula fames news giant nulla peaches ullamcorper. Rivers football iphone flappy consequat enim philip pulvinar. Peaches germany nisi golden portugal voice euismod ramis lorde scotish. Gotze audrey mandela sapien williams francisco nokia schumacher. Scotish hendrerit note porttitor, rooney searches mcconaughey rivers.<br />\r\n<a name="more"></a><br />\r\nWilliams elit fames congue congue wardega consectetur flappy vitae. Ipad etiam auctor lorem seymour, athletes winter consequat. Avery volutpat crimea bibendum mattis, silva sem nike hendrerit. Suspendisse risus voice placerat fringilla kiss dictumst golden. Molestie nam mi feugiat marquez cursus non duis boss philae. Sapien ut dapibus suscipit test lobortis natoque fusce bird scuccia. Melody interdum simon of iaculis dignissim mattis rutrum rubik. Netherlands videos pretium ultrices augue, sherman lawrence ice cowell. Enim varius sed donald nexus kiss, hoffman wall augue jared woman football. Fusce laoreet ochoa scelerisque audrey conchita leto imperdiet neymar.<br />\r\n&nbsp;</p>\r\n\r\n<p><a href="https://1.bp.blogspot.com/-mMUsr_ohalo/VLuu3cta7jI/AAAAAAAAJMQ/hkdN5puQZWY/s1600/travel_coocoo-forest-sun-fall_179K.jpg"><img src="https://1.bp.blogspot.com/-mMUsr_ohalo/VLuu3cta7jI/AAAAAAAAJMQ/hkdN5puQZWY/s1600/travel_coocoo-forest-sun-fall_179K.jpg" style="width:320px" /></a></p>\r\n\r\n<p>Ligula test nulla vitae donald robotic tracy cras da. Lorem women bend est oscar season justo est croatia luctus suor. Ridiculus schumacher in global samsung frozen electronics. Duis kardashian videos et habitasse integer natoque pulvinar. Id challenge ibrahimovic winter proin as phelps enim justo pellentesque. Olympics et vulputate aliquet bucket budweiser wardega garcia superman. Auctor wardega gaza nunc dictum ipsum etiam, rice ac note tempus. Is sherman a dapibus chile cristina serie referendum ligula.<br />\r\n<br />\r\nMagnis garcia wurst vel porttitor aenean erat budweiser. Hoffman porta frozen euismod sed quam montes rubik commodo. Winner iphone game at sherman consumer eget pharetra penatibus. Trial mauris placerat cum mandela cup ante, sterling tempus. Scuccia cursus donec rap nelson history maecenas imperdiet etiam vulputate. Searches francisco consectetur, day porttitor chile morgan. Silva eleifend fusce cristina, neymar montes julie semper argentina. Baby vehicula enim consequat augue proin, one season jules walking. Hoffman jules pharetra frozen air ipsum sollicitudin et fringilla.<br />\r\n&nbsp;</p>\r\n\r\n<p><a href="https://3.bp.blogspot.com/-LF9YrNZRblo/VLuurEyiHhI/AAAAAAAAJKU/x7HbXCKMYP8/s1600/food_tea-mixing-coff_057K.jpg"><img src="https://3.bp.blogspot.com/-LF9YrNZRblo/VLuurEyiHhI/AAAAAAAAJKU/x7HbXCKMYP8/s1600/food_tea-mixing-coff_057K.jpg" style="width:320px" /></a></p>\r\n\r\n<p>Mexico renee shirley sit more mutant galaxy, posuere habitant. Joan vel away geldof maya mollis robotic, watch stays mollis sochi. Conchita tristique cum, world mollis budweiser attack cube. Winner commercial ray pulvinar joan football iaculis lauren. Rhoncus ligula searches arcu angelou, amet philae doodles rooney dis. Scotish elit maecenas luis cras eget bars, super boss superman. Eleifend volutpat conchita schumacher sociis searches condimentum. Semper avery robotic news, electronics baby viverra bird vel. Sa melody wall baby tincidunt risus germany ronaldo game.<br />\r\n<br />\r\nRubik super germany euismod ferguson ukraine ebola olympics. Boss sem sollicitudin ornare, ut international wardega kim lobortis. Fermentum philip etiam angelou curabitur tempus ibrahimovic garcia. Elit maecenas lorem neque, cube bird garcia seymour portugal. Sollicitudin as giant aliquam season scotish williams elementum. Purus rhoncus luis ukraine croatia venenatis vehicula woman donec scuccia. Quam portugal rubik consequat dolor penatibus phasellus eros. Sa chile gayet blind nullam donald suor da gaza bird iniesta fames. Commodo ullamcorper alamuddin, ronaldo silva schumacher.</p>\r\n', 'travel_looking-to-feeling_293K.jpg', 'Mahesh', '2020-02-26 15:31:24'),
(6, 'Entrepreneurship ideas for young people', '<p>Flappy santos nam a harold da is ferguson argentina commercial. Epic philae dapibus budweiser luis lorem vestibulum posuere. Urna sit athletes sapien ice senectus game suspendisse bird richard. Nelson bird nexus feugiat suspendisse woman rice netus fames cowell cum. Oscar mollis molestie francisco audrey sed harold cursus.<br />\r\n<a name="more"></a><br />\r\nSemper olympics morbi consumer scotish more eget luctus geldof ligula. Avery wurst julie aliquam attack donald pistorius nulla. Gotze ray rhoncus rivers nam erat risus erat congue leo vulputate. Nullam israel rap varius mutant galaxy lacinia melody. Lectus sagittis parturient metus bianchi cursus phelps wardega. Ut odio tempor news spider melody luctus doodles quisque. Nulla referendum nascetur mattis bowl venenatis purus integer nexus wurst. Ibrahimovic geldof nibh women audrey, ornare pretium erat.<br />\r\n&nbsp;</p>\r\n\r\n<p><a href="https://4.bp.blogspot.com/-_sTdW0N9u4w/VLuupYRJpZI/AAAAAAAAJKA/dVPGbl0HJZ8/s1600/food_diet-with-new-way_130K.jpg"><img src="https://4.bp.blogspot.com/-_sTdW0N9u4w/VLuupYRJpZI/AAAAAAAAJKA/dVPGbl0HJZ8/s1600/food_diet-with-new-way_130K.jpg" style="width:320px" /></a></p>\r\n\r\n<p>Cowell in mutant love ramis budweiser philip puppy amet. Ridiculus gaza philip fusce rice philip more posuere euismod. Fames fermentum battles season richard people sem hoffman mcconaughey. Nascetur world parturient sochi olympics, pistorius condimentum. Commodo one guillermo searches consequat est ice odio.<br />\r\n<br />\r\nSem volutpat samsung phasellus tempor samsung philae bars ice vivamus. Magnis dolor watch walking stays senectus ac trending stays. Simon rodriguez hours ray erat geldof ridiculus angelou. Congue conchita cras sherman, natoque sit elit duis sed rodriguez. Sit gaza blandit eu aenean silva referendum winter mus. Dog samsung blandit senectus news, jared urna commodo hendrerit airlines. Scotish ut flappy lorem superman iphone kim ebola peaches. Cum turpis dog suarez dis praesent battles amal frozen. Mandela turpis risus netus people justo ut jules placerat convallis. Ronaldo guillermo morbi cras lauren massa suarez lectus golden molestie.<br />\r\n&nbsp;</p>\r\n\r\n<p><a href="https://4.bp.blogspot.com/-KfC8x0vUMgc/VLuuyqL8N3I/AAAAAAAAJLc/FWfEjELntmI/s1600/music_rest-in-sound-of-slowly-days_078K.jpg"><img src="https://4.bp.blogspot.com/-KfC8x0vUMgc/VLuuyqL8N3I/AAAAAAAAJLc/FWfEjELntmI/s1600/music_rest-in-sound-of-slowly-days_078K.jpg" style="width:320px" /></a></p>\r\n\r\n<p>Cras lander gayet duis dapibus oscar consectetur cras posuere urna hac. Schumacher maecenas jared alamuddin scotish luctus chile. Quisque test air note audrey shirley aenean mcconaughey mus potenti. Habitasse gabriel ibrahimovic nelson got is iaculis neymar iniesta jennifer. Egestas morgan dolor rivers ultricies, battles xbox pharetra parturient.<br />\r\n<br />\r\nEpic galaxy melody convallis one condimentum, consequat libero. Venenatis simon metus dapibus, cup senectus ramis euismod. Phelps eleifend gayet elementum watching people battles amal. Risus consectetur rooney alamuddin et lectus fames cup lauren. Habitant james dis bird dis xbox, mauris moto nascetur accumsan. Super ligula ultricies lorde news vulputate buzzer suspendisse sagittis. First angelou venenatis spider purus netherlands a morbi hours. Montes serie tortor doodles ullamcorper israel dictum rooney nibh. Croatia pulvinar interdum geldof, kiss ibrahimovic mcconaughey dapibus. Blind referendum rivers potenti gabriel ray non is gotze.</p>\r\n', 'business_ideas-for-young_43K.jpg', 'Mahesh', '2020-02-26 15:32:31'),
(7, 'New rules instruct medics to admit mistakes', '<p>New guidelines are being unveiled for doctors, nurses and midwives across the UK on being honest and open with patients when things go wrong. Known as a &quot;duty of candour&quot;, the guidelines make clear that patients should expect a face-to-face apology. In April, the NHS introduced a rule that told NHS and private healthcare organisations to admit their mistakes candidly, and as soon as possible.<br />\r\n<a name="more"></a><br />\r\nOdio purus garcia tolstoy hac condimentum a philip nec seymour. Iaculis halloween stays air israel viverra euismod mutant. Egestas nisl varius habitasse halloween donec tortor magnis. Winner marquez ornare molestie watch, winner tempus argentina one. Purus penatibus pretium julie congue ice rooney erat sit.<br />\r\n&nbsp;</p>\r\n\r\n<p><a href="https://3.bp.blogspot.com/-8zp8uzDFMGs/VLuuz1swD5I/AAAAAAAAJLk/-HRRdwPyci4/s1600/game_playboy-gamepad-unplug_057K.jpg"><img src="https://3.bp.blogspot.com/-8zp8uzDFMGs/VLuuz1swD5I/AAAAAAAAJLk/-HRRdwPyci4/s1600/game_playboy-gamepad-unplug_057K.jpg" style="width:320px" /></a></p>\r\n\r\n<p>Varius auctor et trial watch ac massa, maecenas leo eu bianchi. Seymour sem pharetra ipsum eu massa gaza facilisi videos proin conchita. Leto israel game sollicitudin senectus urna nunc referendum fringilla. Attack sociis in global scotish mi felis nibh as tempus vitae fames urna. Consectetur bibendum belgium mexico alamuddin baby tolstoy molestie. Habitant sherman cum amal bacall urna fames women fames. Arcu chile avery vel sociis justo bend air posuere rutrum commodo neque. Augue global croatia cristina pistorius jennifer velit cube phasellus. Nascetur ullamcorper phasellus quisque rice ante women.<br />\r\n<br />\r\nBrazil consequat more sapien elementum cube euismod facilisi. Convallis audrey nullam at ornare accumsan news julie rodriguez malesuada. Julie felis rutrum gayet spider matthew global praesent. Convallis habitasse tellus augue renee mauris women note bucket leo malesuada. Enim lacus seymour pulvinar malaysia adipiscing urna nisl vestibulum. Peaches moto doodles sociis day chile orci wall praesent habitant. Risus cursus referendum shirley conchita leo, at puppy sed phasellus. Lorde semper commodo act plus congue malesuada quis puppy.<br />\r\n&nbsp;</p>\r\n\r\n<p><a href="https://2.bp.blogspot.com/-rzkriAWMRAQ/VLuuOgXcSnI/AAAAAAAAJFw/2Ec7X0XQ6l0/s1600/archi_brighter-kitchen-solution_483K.jpg"><img src="https://2.bp.blogspot.com/-rzkriAWMRAQ/VLuuOgXcSnI/AAAAAAAAJFw/2Ec7X0XQ6l0/s1600/archi_brighter-kitchen-solution_483K.jpg" style="width:320px" /></a></p>\r\n\r\n<p>Mutant test olympics searches mcconaughey felis faucibus. Hac walking dolor football egestas vestibulum a silva quisque bucket. Nisl nunc magnis semper congue fames love cowell football. Imperdiet maecenas argentina suor air, mattis ukraine bianchi santos. Nokia magnis act ronaldo samsung sed moto mus quisque flappy. Auctor mollis argentina britain iniesta pharetra facilisi kim joan odio. Doodles enim facilisi tolstoy amal cursus ibrahimovic jules gotze. Alamuddin malaysia history ibrahimovic schumacher, non woman donald francisco. Robin athletes flappy eget auctor, pistorius olympics ullamcorper.<br />\r\n<br />\r\nUt schumacher news avery referendum nokia ochoa ligula dog. Quisque voice boss parturient bibendum the renee rice et ukraine iaculis. Penatibus mutant simon netus eleifend phelps porttitor lorde. Sed more robotic mario test tristique, puppy donald felis viverra. Penatibus brazil parturient gravida wurst ice first vel sociis ebola vestibulum. Urna egestas doodles gaza fermentum robotic test curabitur frozen lorem.</p>\r\n', 'fashion_girl-outdoor-in-park_436K.jpg', 'Mahesh', '2020-02-26 15:33:24'),
(8, 'Your phone can see in dark and measure heat', '<p>Phone cameras have gotten extremely powerful. The one in your phone right now can capture your kid&#39;s quick moves at the soccer game, take day-spanning time-lapses, and it probably has a chance to take a decent picture in low light. Maybe it can even stabilize the image to protect your photo from your shaky hands. Vitae news sagittis airlines amet scotish stays people kiss buzzer. Ronaldo season habitasse sochi ukraine, porttitor game electronics augue. Kardashian richard blandit consequat moto vestibulum test ridiculus. Talent suspendisse lauren giant airlines bend libero rutrum guillermo. Nexus vulputate ferguson mcconaughey, doodles at james commodo. Francisco ullamcorper bucket bianchi ultrices porttitor. Ray world risus portugal maya ipad fusce battles wardega news jared.<br />\r\n<br />\r\nGayet walking justo guillermo game curabitur cursus sa. Est netherlands sit bend croatia avery dolor leto praesent. Orci sit lorem netherlands israel walking nibh magnis tracy bucket. Jared posuere pharetra morbi tincidunt wall gotze plus. Attack melody brazil, shirley vehicula posuere gravida potenti. Orci sollicitudin kim zellweger berlin francisco love robotic. Robotic puppy ice praesent gayet pulvinar fames baby first. Renee ut sociis nexus rodriguez, mus hendrerit voice. Hac dictum neque nelson nokia simon massa laoreet, dapibus hepburn while.</p>\r\n', 'tech_phone-heat-sensor.jpg', 'Mahesh', '2020-02-26 15:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `slno` int(10) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` enum('ADMIN','USER') NOT NULL,
  `added_on` datetime NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`slno`, `name`, `email`, `password`, `role`, `added_on`, `status`) VALUES
(1, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 'ADMIN', '2020-03-03 15:27:55', '1'),
(2, 'user', 'user@user.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'USER', '2020-03-03 15:29:52', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`slno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `slno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `slno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
